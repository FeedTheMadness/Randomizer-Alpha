require "base62"

n = 0
loop do
  row = Array.new(Random.rand(6..14)){rand(62).base62_encode}.join
  puts row
  n += 1
  break if n == 100
end
