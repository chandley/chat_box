# chat_box

[![Test Coverage](https://codeclimate.com/github/chandley/chat_box/badges/coverage.svg)](https://codeclimate.com/github/chandley/chat_box)
[![Code Climate](https://codeclimate.com/github/chandley/chat_box/badges/gpa.svg)](https://codeclimate.com/github/chandley/chat_box)

## Summary

This is the pre-course 'chatterbox' excercise

### Problem

* Write a chatter program that recognises key phrases using regular expressions, and returns an answer with matched strings.

### Languages/Platforms/Tools

| Languages | Technologies  | Testing Frameworks| Misc
| :-------------------------------------------- |:--------------|:-----------|:----|
| Ruby      |               | None             |  Regex             |
|           |               |                   |               |
|           |               |                   |  
|           |               |

### Solution

### Setup
```
gem install colorize
ruby chatbox.rb
```

### Tests

### Images
```
C> Hello, what's your name?
U$ Chris
C> Hello Chris
U$ I love haggis
C> I love haggis too
```

### To do



### Learning points

I don't understand exactly what the % symbol does in this line

response.nil? ? 'sorry?' : response % { c1: $1, c2: $2}
