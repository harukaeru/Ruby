file = File.open ARGV[0]
file.each_line do |line|
  next if line =~ /^\s*$/
  next if line =~ /^#.*/

  print line
end
file.close
