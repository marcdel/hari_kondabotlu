defmodule HariKondabotlu.ExTwitterClient do
  @behaviour HariKondabotlu.TwitterClient

  @spec tweet(message :: String.t) :: ExTwitter.Model.Tweet.t
  def tweet(message) do
    ExTwitter.update(message)
  end
end
