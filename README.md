# Emails2Domains

Build the command line parsing executable with
$ mix escript.build
Run the result as
$ ./emails2domains --file=<filename>

Example:
$ ./emails2domains --file=emails.txt

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed
by adding `emails2domains` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:emails2domains, "~> 0.1.0"}
  ]
end
```

Tests can be run as with this example:
ganymede:emails2domains mbk$ mix test --trace

Emails2DomainsTest
  * doctest Emails2Domains.hello/0 (1) (0.00ms)
  * test greets the world (0.00ms)


Finished in 0.04 seconds
1 doctest, 1 test, 0 failures

Randomized with seed 449865


Documentation can be generated with [ExDoc](https://github.com/elixir-lang/ex_doc)
and published on [HexDocs](https://hexdocs.pm). Once published, the docs can
be found at [https://hexdocs.pm/emails2domains](https://hexdocs.pm/emails2domains).
