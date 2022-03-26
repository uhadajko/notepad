require_relative 'post.rb'
require_relative 'memo.rb'
require_relative 'task.rb'
require_relative 'link.rb'

puts 'Hi, i`m your notepad'
puts 'What you want write?'

choices = Post.post_types

choice = -1

until choice >= 0 && choice <= choices.size

  choices.each_with_index do |type, index|
    puts "\t#{index}.#{type}"
  end

  choice = STDIN.gets.chomp.to_i
end 

entry = Post.create(choice)

entry.read_from_console

entry.save

puts 'it`s all, post writed'
