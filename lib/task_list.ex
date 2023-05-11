defmodule Tasklist do
  # @file_name is a module attribute (constant)
  # can be used as annotations, temporary storage or constants
  @file_name "task_list.md"

  def add(task_name) do
    task = "[] " <> task_name <> "\n"
    File.write(@file_name, task, [:append])
  end

  def show_list do
    File.read(@file_name)
  end
end
