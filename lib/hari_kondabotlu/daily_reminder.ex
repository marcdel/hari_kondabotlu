defmodule HariKondabotlu.DailyReminder do
  @twitter_client Application.get_env(:hari_kondabotlu, :twitter_client)
  @date_client Application.get_env(:hari_kondabotlu, :date_client)
  @first_day_of_trump_presidency ~D[2017-01-20]

  @spec post() :: nil
  def post do
    days = days_between(@first_day_of_trump_presidency, @date_client.today)
    @twitter_client.tweet("REMINDER FOR DAY #{days} OF TRUMP PRESIDENCY: THIS IS NOT NORMAL (AND NORMAL WASN'T THAT GREAT EITHER)")
  end


  @spec days_between(Date.t, Date.t) :: integer
  defp days_between(start_date, end_date) do
    Date.diff(end_date, start_date)
  end
end
