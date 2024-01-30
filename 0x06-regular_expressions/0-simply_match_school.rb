#!/usr/bin/env ruby
# This script accepts one argument and pass it to a regular expression matching method

puts ARGV[0].scan(/school/i).join
