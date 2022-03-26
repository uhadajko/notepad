class Post
  def self.post_types
    [Memo, Task, Link]
  end

  def self.create(type_index)
    return post_types[type_index].new
  end

  def initialize
    # створюємо клас з двома полями
    @created_at = Time.now
    @text = nil
  end

  def read_from_console
    # todo
  end

  def to_strings
    # todo
  end

  # Метод який дозволяє себе зберігати
  def save
    file = File.new(file_path, "w:UTF-8")

    for item in to_strings do
      file.puts(item)
    end

    file.close
  end

  # Метод який визначає назву файлу та шлях до нього
  def file_path
    current_puth = File.dirname (__FILE__)

    file_name = @created_at.strftime("#{self.class.name}_%Y-%m-%d_%H-%M-%S.txt")

    return current_puth + "/" + file_name
  end
end