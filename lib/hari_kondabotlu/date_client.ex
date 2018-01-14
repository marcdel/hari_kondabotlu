defmodule HariKondabotlu.DateClient do

 @doc """
 Returns today's date in UTC
 """
 @callback today() :: Date.t
end
