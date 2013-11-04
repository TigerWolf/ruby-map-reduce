
map = []

file = File.new("sample-data/CrimeStatebyState.csv", "r")

# MAP
while (line = file.gets)

  line =  line.chomp
  csv = line.split(",")
  key = csv[2]
  values = csv[4]

  map << {key => values}

end 

map = map.sort_by { |hsh| hsh.first }


# REDUCE
prev_key = nil
key_total = 0

map.each do |item|
  key, value = item.first
  #puts item[0].key
  #puts item.inspect

  # check for new key
   if prev_key && key != prev_key && key_total > 0

      # output total for previous key

      # <key><tab><value><newline>
      puts prev_key + "\t" + key_total.to_s

      # reset key total for new key
      prev_key = key
      key_total = 0

   elsif ! prev_key
      prev_key = key

   end

   # add to count for this current key
   key_total += value.to_i

end


#puts map.inspect

