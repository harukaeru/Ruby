pattern = Regexp.new ARGV[0]
file = File.open ARGV[1]
file.each_line do |line|
  if pattern =~ line
    puts line
  end
end
