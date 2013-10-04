require_relative 'config/application'

puts "Put your application code in #{File.expand_path(__FILE__)}"

user_input = ARGV

def command_parser (user_input)

  command = user_input.shift.downcase
  body = user_input.join(' ')
  update = "To do list has been updated"

  case command

  when "list"
    Viewer.print(Task.all)
  when "add"
    Task.create(:description => body)  
    Viewer.print(update)
  when "delete"
    Task.find(body.to_i).destroy
    Viewer.print(update)
  when "complete"
    completed_task = Task.find(body.to_i)
    completed_task.completed = true
    completed_task.save
    Viewer.print(update)
  end
end

class Viewer
  def self.print(to_be_printed)
    puts to_be_printed
  end
end

command_parser(user_input)
