# {{reading_time}} Method Design Recipe

## 1. Describe the Problem

As a user
So that I can improve my grammar
I want to verify that a text starts with a capital letter and ends with a suitable sentence-ending punctuation mark.

## 2. Design the Method Signature

```ruby
# tests a string starts with a captital and ends with punctuation
grammar_check = checks_sentence_structure(text)
# the argument is a string of words, assumed a sentence
# evaluates true/false and puts the result in a suitable message
```

## 3. Create Examples as Tests

```ruby
# returns false if the string is empty
checks_sentence_structure("") => false
# returns true if the string starts with capital letter and ends with a sentence ender
checks_sentence_structure("Aardvark.") => true
check_sentence_structure("One two three!") => true
check_sentence_structure("Good RSpec \n great Job?") => true
```

## 4. Implement the Behaviour

_After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour._