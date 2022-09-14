def checks_sentence_structure(text)
  text.match?(/^[A-Z]/) && text.match?(/\.|\!|\?$/)
end