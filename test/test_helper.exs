ExUnit.start()

Ecto.Adapters.SQL.Sandbox.mode(HariKondabotlu.Repo, :manual)

Mox.defmock(HariKondabotlu.TwitterClientMock, for: HariKondabotlu.TwitterClient)
Mox.defmock(HariKondabotlu.DateClientMock, for: HariKondabotlu.DateClient)
