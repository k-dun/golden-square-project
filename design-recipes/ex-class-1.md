1. 
As a user
So that I can keep track of my tasks
I want a program that I can add todo tasks to and see a list of them.

As a user
So that I can focus on tasks to complete
I want to mark tasks as complete and have them disappear from the list.

2. 

class TodoList
  def initialize
    # ...
  end

  def add(task) # task is a string
    # Raises an error "Wrong data type." if task isn't a string.
    # Returns true if task added 
  end

  def print_task_list
    # Raises an error if list empty
    # Otherwise returns the whole list
  end

  def mark_task_as_complete(task) # task is a string
    # Raises an error "Task is not on the list." if task doesn't exist
    # Otherwise, deletes the task from the list and returns
    # a string saying "#{task} marked complete."
  end
end

3. 

todolist = TodoList.new
todolist.add("Shave")
todolist.print_task_list # => "Shave"

todolist = TodoList.new
todolist.print_task_list # => fails with "Todo list empty."

todolist = TodoList.new
todolist.add("Shave")
todolist.mark_as_complete("Shave") # => deletes the task from list and prints string "#{task} marked complete."

todolist = TodoList.new
todolist.add("Shave")
todolist.mark_as_complete("Moisturise") # => fails with "Task is not on the list."

4. 