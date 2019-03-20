# Emails2Domains

Copyright (c) 2019 Mark Bykerk Kauffman

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.

Author: Mark Bykerk Kauffman
Date: 2019.03
Purpose: 
Small Demo of an Elxir Mix Project 
Read in a file with a list of email addresses. Specify the file on the command line.
Ouput the domains of the email addresses to stdout.

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
