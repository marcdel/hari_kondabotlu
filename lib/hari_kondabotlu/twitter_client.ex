defmodule HariKondabotlu.TwitterClient do

 @doc """
 Updates the authenticating user’s current status, also known as Tweeting.
 """
 @callback tweet(message :: String.t) :: ExTwitter.Model.Tweet.t
end
