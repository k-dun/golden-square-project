class TodoList
  def initialize
    @task_list = []
  end

  def add(task)
    raise "Wrong data type." if !(task.is_a?(String))
    @task_list << task
    return true
  end

  def print_task_list
    raise "List is empty." if @task_list.empty?
    return @task_list.join("\n")
  end

  def mark_task_as_complete(task)
    raise "Task is not on the list." if !(@task_list.include?(task))
    @task_list.delete(task)
    return "#{task} marked complete."
  end
end