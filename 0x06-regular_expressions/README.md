# 0x06. Regular expression
### Background Context
In this project, regular expression was built using Oniguruma, a regular expression library used by Ruby by default. Because the focus of this exercise is to play with regular expressions (regex), here is the Ruby code that you should use, just replace the regexp part, meaning the code in between the ``//:``

```
sylvain@ubuntu$ cat example.rb
#!/usr/bin/env ruby
puts ARGV[0].scan(/127.0.0.[0-9]/).join
sylvain@ubuntu$
sylvain@ubuntu$ ./example.rb 127.0.0.2
127.0.0.2
sylvain@ubuntu$ ./example.rb 127.0.0.1
127.0.0.1
sylvain@ubuntu$ ./example.rb 127.0.0.a
```

## General Requirements
* Allowed editors: **vi**, **vim**, **emacs**
* All files are interpreted on ``Ubuntu 20.04 LTS``
* All files end with a new line
* There is a ``README.md`` file, at the root of the folder of the project
* All Bash script files are executable
* All your regex must be built for the Oniguruma library


### Resources
**Read or watch:**
* [Regular-Expressions.info](https://www.regular-expressions.info/)
* [a Ruby regular expression editor](https://rubular.com/)
* [Learn Regular Expressions with simple, interactive exercises](https://regexone.com/)
* [Python - Regular Expressions](https://www.tutorialspoint.com/python/python_reg_expressions.htm)
* [Ruby - Regular Expressions](https://www.tutorialspoint.com/ruby/ruby_regular_expressions.htm)
* [RegExp Object](https://www.w3schools.com/jsref/jsref_obj_regexp.asp)
* [PHP/Javascript/Python: https://regex101.com/](https://regex101.com/)
* [Regular Expressions in you-tube](https://www.youtube.com/watch?v=rhzKDrUiJVk)
* [Regular Expressions (Regex) Tutorial: How to Match Any Pattern of Text](https://www.youtube.com/watch?v=sa-TUpSx1JA)

## Files & Description
|  S/N	|	File	|	Description	|
|:-----:|---------------|-----------------------|
|  1.	|[0-simply_match_school.rb](https://github.com/hassankyanzi/alx-system_engineering-devops/blob/main/0x06-regular_expressions/0-simply_match_school.rb) | Using the project instructions, create a Ruby script that accepts one argument and pass it to a regular expression matching method. The regular expression must match ``School`` |
|  2.   |[1-repetition_token_0.rb](https://github.com/hassankyanzi/alx-system_engineering-devops/blob/main/0x06-regular_expressions/1-repetition_token_0.rb) | Using the project instructions, create a Ruby script that accepts one argument and pass it to a regular expression matching method.  |
