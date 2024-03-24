start = Time.now

for i in 0..100000000
end

finish = Time.now

elapsed = ((finish - start) * 1000).round

File.open('output.txt', 'a') do |fout|
  fout.puts "#{elapsed}\n"
end
