def simple_grep(pattern, filename)
  file = File.open(filename)
  file.readlines.each do |line|
    print line if pattern =~ line
  end
  file.close
end
