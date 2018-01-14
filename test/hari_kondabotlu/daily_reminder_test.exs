defmodule HariKondabotlu.DailyReminderTest do
  use ExUnit.Case

  import Mox

  @twitter_client_mock HariKondabotlu.TwitterClientMock
  setup :verify_on_exit!

  describe ".post" do
    test "tweet message on twitter" do
      @twitter_client_mock
      |> expect(:tweet, fn "" -> %ExTwitter.Model.Tweet{} end)

      HariKondabotlu.DailyReminder.post()
    end
  end
end
