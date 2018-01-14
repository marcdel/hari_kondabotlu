defmodule HariKondabotlu.DailyReminder do
  @twitter_client Application.get_env(:hari_kondabotlu, :twitter_client)

  @spec post() :: nil
  def post do
    @twitter_client.tweet("")
  end
end
