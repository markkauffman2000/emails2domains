defmodule Emails2Domains do
  @moduledoc """
  Documentation for Emails2Domains. Default Mix Module
  """

  @doc """
  Hello world.

  ## Examples

      iex> Emails2Domains.hello()
      :world

  """
  def hello do
    :world
  end
end

defmodule Emails2Domains.CLI do
  @moduledoc """
  Based on the command line argument parsing code from:
  https://elixirschool.com/en/lessons/advanced/escripts/ that uses
  Escript. By using this we build an executable with mix escript.build
  that parses the command line looking for --file=<filename>.
  """

  @doc """
  We take the arguments from the input line and parse them to produce a
  List of options. Then we process the options.

  ## Parameters

  - args: String of arguments in the for filename=<filename>.
  """
  def main(args) do
    args |> parse_args |> process
  end

  @doc """
  process() for an incomming empty List.
  """
  def process([]) do
    IO.puts "No arguments given. Need --file=<filename>"
  end

  def process(options) do
    # IO.puts "Hello #{options[:file]}"
    # file_name = Path.expand("#{options[:file]}")
    # IO.puts("file_name:#{file_name}")
    File.stream!(options[:file])
      |> Stream.map(&(get_domain(&1))) # Stream.map(enum, fun)
      |> Enum.to_list # Force the computation, get the full list.
      |> MapSet.new   # Turn the List to a map set, eliminate
      |> Stream.map(&(IO.puts(&1))) # Dump to the console
      |> Stream.run

  end

  @doc """
  Returns the domail portion of an email address.

  ## Example
    iex> Emails2Domains.CLI.get_domain("mark.kauffman@blackboard.com")
    "blackboard.com"
  """
  def get_domain(line) do
    list = String.split(String.trim_trailing(line),"@")
    result = if length(list) > 1 do
      # IO.puts Enum.at(list,1) #Lists are linked. No indices.
      Enum.at(list,1)
    else
      ""
    end
    result
  end

  defp parse_args(args) do
    {options, _, _} = OptionParser.parse(args,
      switches: [file: :string]
    )
    options
  end
end

Emails2Domains.CLI.main(["--file", "emails.txt"])
