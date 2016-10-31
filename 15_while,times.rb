#
# 15. while,timesを使ってみよう
#

# while　繰り返し処理
# 制限がなければ無限に繰り返される

i = 0 # 初期化

# 回数を制限する
while i < 10 do
  puts "#{i}hello"
  #i = i + 1 # 1づつ増加
  i += 1 # 省略記法 # *= -=もある
end

# times
# 回数が決まってる場合の繰り返し

10.times do
  puts "hello"
end

10.times do |i| # 0から始まる数値をiで管理する場合
  puts "#{i}hello"
end

# do end省略 {}を使用する (１行で書きたい場合)
10.times {|i| puts "#{i}hello" }
