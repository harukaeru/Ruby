require_relative 'simple_grep'

pattern_text = ARGV[0]
filename = ARGV[1]
pattern = Regexp.new(pattern_text)
simple_grep(pattern, filename)
