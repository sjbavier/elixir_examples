defmodule Lib.Tasklist do
  # instead of calling File.read() you can call simply read()
  # the number after function name is the arity which is the number
  # of arguments a function receives
  # also written commonly in format name_of_function/arity ie: File.write/3
  # when importing a named function you must always pass its name and arity
  import File, only: [write: 3, read: 1]

  # @file_name is a module attribute (constant)
  # can be used as annotations, temporary storage or constants
  @file_name "task_list.md"

  def add(task_name) do
    task = "[] " <> task_name <> "\n"
    write(@file_name, task, [:append])
  end

  def show_list do
    read(@file_name)
  end
end
