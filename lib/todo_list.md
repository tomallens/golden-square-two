# {{todo_list}} Method Design Recipe

## 1. Describe the Problem

As a user
So that I can keep track of my tasks
I want to check if a text includes the string #TODO.

## 2. Design the Method Signature

```ruby
todo_list = todo_checker(string)
# checking string includes "#TODO"
# This should return true
```

## 3. Create Examples as Tests

```ruby
# returns false if the string is empty
todo_checker("") => false
# returns false if the string does not contain "#TODO"
todo_checker("This is a string") => false
todo_checker("This string contains #todo") => false
todo_checker("This string contains TODO") => false
# returns true if the string contains "#TODO"
todo_checker("This string contains #TODO") => true
# returns true if the string contains "#TODO"
todo_checker("#TODO") => true
# retuens true if the string contains multiple iterations of "#TODO"
todo_checker("#TODO or not #TODO") => true
```

## 4. Implement the Behaviour

_After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour._