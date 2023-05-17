defmodule Lib.PatternMatching do
  def print_creds do
    # matching strings
    "Authentication: " <> credentials = "Authentication: Basic dXNlcjpwYXNz"
    IO.puts(credentials)
  end
end
