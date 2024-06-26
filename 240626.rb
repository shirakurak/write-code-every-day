# https://algo-logic.info/rec-bit-search/

list = [4, 10, 1]

def bit_plus(list)
  sum = 0
  (1 << list.length).times do |bit|
    list.length.times do |i|
      mask = 1 << i
      if (bit & mask) != 0
        sum += list[i]
      end
    end
  end
  sum
end

puts bit_plus(list)
