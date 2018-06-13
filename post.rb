require 'tumblr_client'

def client
  @client ||= Tumblr::Client.new({
    :consumer_key => ENV['TUMBLR_CONSUMER_KEY'],
    :consumer_secret => ENV['TUMBLR_CONSUMER_SECRET'],
    :oauth_token => ENV['TUMBLR_OAUTH_TOKEN'],
    :oauth_token_secret => ENV['TUMBLR_OAUTH_TOKEN_SECRET']
  })
end

def post(quote, source)
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

def blog
  @blog ||= client.info['user']['blogs'].first
end

def call
  source, quotes = source_and_quotes

  puts "Posting #{source}'s quotes..."
  puts "Number of quotes: #{quotes.size}"
  quotes.each { |quote| post(quote, source) }

  puts "\nDone. Check them here #{blog['url']}"
end

# Make the request
call

