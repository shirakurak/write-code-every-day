# https://algo-logic.info/rec-bit-search/
# 値が違う 𝑛 個の数字が与えられます。選び方をすべての場合について考えたとき
# それぞれの場合で選んだ数値の和を、さらにすべて足して和を求めて下さい。

list = [4, 10, 1]

# リストの部分集合の全体の和を求める
def bit_plus(list)
  sum = 0
  # 1（ビット表現：0001）を左に3回シフトする（ビット表現：1000）
  # 8（2^3）になるまで繰り返す
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
