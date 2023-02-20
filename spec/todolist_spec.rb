require 'todolist'

RSpec.describe TodoList do
  describe '#add' do
    it 'adds a task to the todo list' do
      todolist = TodoList.new
      expect(todolist.add("Konrad")).to eq true
    end

    it 'fails because task isn\'t a string' do
      todolist = TodoList.new
      expect { todolist.add(5) }.to raise_error "Wrong data type."
    end
  end

  describe '#print_task_list' do
    it 'prints the task list' do
      todolist = TodoList.new
      todolist.add("Konrad")
      expect(todolist.print_task_list).to eq "Konrad"
    end

    it 'fails because list is empty' do
      todolist = TodoList.new
      expect { todolist.print_task_list }.to raise_error "List is empty."
    end
  end

  describe '#mark_task_as_complete' do
    it 'marks task as complete and deletes it from the task list' do
      todolist = TodoList.new
      todolist.add("Konrad")
      expect(todolist.mark_task_as_complete("Konrad")).to eq "Konrad marked complete."
    end

    it 'fails if task not on the list' do
      todolist = TodoList.new
      todolist.add("Konrad")
      expect { todolist.mark_task_as_complete("Makers") }.to raise_error "Task is not on the list."
    end
  end
end