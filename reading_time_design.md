# {{reading_time}} Method Design Recipe

## 1. Describe the Problem

As a user
So that I can manage my time
I want to see an estimate of reading time for a text, assuming that I can read 200 words a minute.


## 2. Design the Method Signature

```ruby
# `` finds how long a string will take to read at 200wpm
reading_time = find_time_to_read(text)
# the argument is a string of words
# the output is an integer of minutes
```

## 3. Create Examples as Tests

```ruby
# returns 0 if the string is empty
find_time_to_read('') => 0
# returns 1 if string has <= 200 words
find_time_to_read('this is a test') => 1
# returns 2 if string has >200 words
find_time_to_read('a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a') => 2

## 4. Implement the Behaviour

_After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour._