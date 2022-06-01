

# # app/services/tweet_creator.rb
# class TweetCreator
#   def initialize(message)
#     @message = message
#   end

#   def send_tweet
#     client = Twitter::REST::Client.new do |config|
#       config.consumer_key        = ENV['TWITTER_CONSUMER_KEY']
#       config.consumer_secret     = ENV['TWITTER_CONSUMER_SECRET']
#       config.access_token        = ENV['TWITTER_ACCESS_TOKEN']
#       config.access_token_secret = ENV['TWITTER_ACCESS_SECRET']
#     end
#     client.update(@message)
#   end
# end
# Then you can call TweetCreator.new(params[:message]).send_tweet anywhere in your app
