defmodule Mix.Tasks.Tarantool.Cleanup do
  use Mix.Task
  @shortdoc "Cleanup test files"

  @doc false
  def run(_args) do
    rmpath("test/*.xlog")
    rmpath("test/*.snap")
  end

  def rmpath(path) do
    Path.wildcard(path) |> Enum.map(&File.rm/1)
  end
end
