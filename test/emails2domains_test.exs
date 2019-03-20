defmodule Emails2DomainsTest do
  use ExUnit.Case
  doctest Emails2Domains

  test "greets the world" do
    assert Emails2Domains.hello() == :world
  end
end

defmodule Emails2DomainsCLITest do
  use ExUnit.Case
  doctest Emails2Domains.CLI

end
