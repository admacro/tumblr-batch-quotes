require 'tumblr_client'

def client
  @client ||= Tumblr::Client.new({
    :consumer_key => ENV['TUMBLR_CONSUMER_KEY'],
    :consumer_secret => ENV['TUMBLR_CONSUMER_SECRET'],
    :oauth_token => ENV['TUMBLR_OAUTH_TOKEN'],
    :oauth_token_secret => ENV['TUMBLR_OAUTH_TOKEN_SECRET']
  })
end

def blog
  @blog ||= client.info['user']['blogs'].first
end

def post_type
  if ARGV.empty?
    usage = <<~USAGE

       Usage: ruby post.rb <type>
       Valid types: quotes, text

       Example: ruby post.rb text
    USAGE
    puts usage
    exit
  else
    ARGV[0]
  end
end

# quotes
def post_quote(quote, source)
  puts quote
  client.quote blog['name'], { quote: quote, source: source }
end

def source_and_quotes
  source = ''
  quotes = []
  File.open('quotes.txt', 'r').readlines.each_with_index do |line, i|
    line = line.strip           # remove newline at the end
    source = line if i == 0
    quotes << line if i > 0
  end
  [source, quotes]
end

def post_quotes
  source, quotes = source_and_quotes

  abort 'Quotes or quote source is empty.' if source.empty? || quotes.empty?
  
  puts "Posting #{source}'s quotes..."
  puts "Number of quotes: #{quotes.size}"
  quotes.each { |quote| post_quote(quote, source) }

  puts "\nDone. Check them here #{blog['url']}"
end

# text
def text_title_and_body
  title = 'Untitled'
  body = ''
  File.open('text.md', 'r').readlines.each_with_index do |line, i|
    line = line.strip           # remove newline at the end
    title = line if i == 0
    body += line if i > 0
  end
  [title, body]
end

def post_text
  title, body = text_title_and_body
  abort "Title or body is empty." if title.empty? || body.empty?
  client.text blog['name'], { title: title, body: body }
end

# Make the request
action = "post_#{post_type}"
send action.to_sym
