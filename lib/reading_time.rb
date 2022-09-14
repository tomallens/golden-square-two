def find_time_to_read(text)
  word_count = text.split(' ').length
  return (word_count / 200.to_f).ceil
end