defmodule HariKondabotlu.StandardDateClient do
  @behaviour HariKondabotlu.DateClient

  @spec today() :: Date.t
  def today() do
    Date.utc_today()
  end
end
