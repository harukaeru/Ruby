pattern = Regexp.new(ARGV[0])
filename = ARGV[1]

MAX_MATCHES = 10
current_matches = 0

file = File.open filename
file.each_line do |line|
  if current_matches >= MAX_MATCHES
    puts "=== #{MAX_MATCHES}回マッチしたので以降は表示しません ==="
    break
  end

  if line =~ pattern
    current_matches += 1
    puts line
  end
end
file.close
