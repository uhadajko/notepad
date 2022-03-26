require 'date'

class Task < Post
  def initialize
    super

    @due_date = Time.now
  end
  
  def read_from_console
    puts 'what to do'
    @text = STDIN.gets.chomp

    puts 'to what date you need to do it'
    input = STDIN.gets.chomp

    @due_date = Date.parse(input)
  end

  def to_strings
    time_string = "great #{@created_at.strftime("%Y.%m.%d - %H:%M:%S")} \n\r \n\r"

    deadline = "deadline to: #{@dudata}"

    return [deadline, @text, time_string]
  end

end