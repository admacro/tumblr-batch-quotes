# tumblr-batch-quotes
Post multiple quotes to Tumblr

## Requirement
 - [Install Ruby](https://www.ruby-lang.org/en/downloads/)
 - `gem install tumblr_client`
 - Get your Tumblr API key at https://www.tumblr.com/oauth/apps

## How to use it
1. Put your secret keys in your environment
```bash
export TUMBLR_CONSUMER_KEY=snjohNSI8oPecFKehkwRuS760Xdqp6rpl8db393NfdYhahaha
export TUMBLR_CONSUMER_SECRET=Y4YOiwJGzgAzQAeYakliN74fNZAvsNO8OTkkRzsjoAflhahaha
export TUMBLR_OAUTH_TOKEN=xZ8EO6kAlzI1UkviXY96IcALjl5W9dW5HQZ7etGrQ2yJwhahaha
export TUMBLR_OAUTH_TOKEN_SECRET=VpdMGj61mkIJTBCGlVrg5vX2KRJ3JPZaYW3KPmtaJnhahaha
```
2. Put quotes and source into `quotes.txt` like this. The first line is the source, following the quotes.
```txt
Socrates
An unexamined life is not worth living.
True knowledge exists in knowing that you know nothing.
I know that I am intelligent, because I know that I know nothing.
The hottest love has the coldest end.
When the debate is over, slander becomes the tool of the loser.
By all means marry: if you get a good wife, you’ll become happy; if you get a bad one, you’ll become a philosopher.
I cannot teach anybody anything, I can only make them think.
There is only one good, knowledge, and one evil, ignorance.
Education is the kindling of a flame, not the filling of a vessel.
Beware the barrenness of a busy life.
```
3. run `ruby post.rb`
