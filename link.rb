class Link < Post

  def initialize
    super

    @url = ''
  end

  def read_from_console
    puts 'adres url'
    @url = STDIN.gets.chomp

    puts 'what is it?'
    @text = STDIN.gets.chomp
  end

  def to_strings
    time_string = "great #{@created_at.strftime("%Y.%m.%d - %H:%M:%S")} \n\r \n\r" 

    return [@url, @text, time_string]
  end

end