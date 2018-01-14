defmodule HariKondabotlu.DailyReminderTest do
  use ExUnit.Case

  import Mox
  @twitter_client_mock HariKondabotlu.TwitterClientMock
  @date_client_mock HariKondabotlu.DateClientMock

  setup :verify_on_exit!

  describe ".post" do
    test "tweets day 1 on the first day of the trump presidency" do
      @date_client_mock
      |> expect(:today, fn -> ~D[2017-01-20] end)

      @twitter_client_mock
      |> expect(:tweet, fn "REMINDER FOR DAY 0 OF TRUMP PRESIDENCY: THIS IS NOT NORMAL (AND NORMAL WASN'T THAT GREAT EITHER)" -> %ExTwitter.Model.Tweet{} end)

      HariKondabotlu.DailyReminder.post()
    end

    test "tweets current day of the trump presidency" do
      @date_client_mock
      |> expect(:today, fn -> ~D[2018-01-14] end)

      @twitter_client_mock
      |> expect(:tweet, fn "REMINDER FOR DAY 359 OF TRUMP PRESIDENCY: THIS IS NOT NORMAL (AND NORMAL WASN'T THAT GREAT EITHER)" -> %ExTwitter.Model.Tweet{} end)

      HariKondabotlu.DailyReminder.post()
    end

    test "tweets 366 on the first day of second year" do
      @date_client_mock
      |> expect(:today, fn -> ~D[2018-01-21] end)

      @twitter_client_mock
      |> expect(:tweet, fn "REMINDER FOR DAY 366 OF TRUMP PRESIDENCY: THIS IS NOT NORMAL (AND NORMAL WASN'T THAT GREAT EITHER)" -> %ExTwitter.Model.Tweet{} end)

      HariKondabotlu.DailyReminder.post()
    end
  end
end
