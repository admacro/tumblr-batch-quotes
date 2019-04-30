# tumblr-batch-quotes
Post multiple quotes, and text to Tumblr.

## Requirement
 - [Install Ruby](https://www.ruby-lang.org/en/downloads/)
 - `gem install tumblr_client`
 - Get your Tumblr API key at https://www.tumblr.com/oauth/apps

## How to use it
First, put your secret keys in your environment
```bash
export TUMBLR_CONSUMER_KEY=snjohNSI8oPecFKehkwRuS760Xdqp6rplhahahahahahahaha
export TUMBLR_CONSUMER_SECRET=Y4YOiwJGzgAzQAeYakliN74fNZAvsNO8hahahahahahahahaha
export TUMBLR_OAUTH_TOKEN=xZ8EO6kAlzI1UkviXY96IcALjl5W9dW5HQZ7hahahahawhahaha
export TUMBLR_OAUTH_TOKEN_SECRET=VpdMGj61mkIJTBCGlVrg5vX2KRJ3Jhahahahawhahnhahaha
```

### Post multiple quotes
1. Put quotes and source into `quotes.txt` like following. The first
line is the source of the quotes, the following the quotes.
```txt
Socrates
An unexamined life is not worth living.
True knowledge exists in knowing that you know nothing.
The hottest love has the coldest end.
When the debate is over, slander becomes the tool of the loser.
By all means marry: if you get a good wife, you’ll become happy; if you get a bad one, you’ll become a philosopher.
I cannot teach anybody anything, I can only make them think.
There is only one good, knowledge, and one evil, ignorance.
Education is the kindling of a flame, not the filling of a vessel.
Beware the barrenness of a busy life.
```
2. run `ruby post.rb quotes`

### Post text
1. Put title and text into `text.md` like following. The first
line is the title, the following the body of the text. The format of
the text is set to `markdown`.
```markdown
Emma Did Makeup Today
Today, I went out with Emma. She dressed in a blue skirt and looked
gorgeous. When I get to the street corner, I couldn't recognize her
as she did makeup. I looked at her for five seconds and she burst out
laughing.

```
2. run `ruby post.rb text`
