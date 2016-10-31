#
# 16 for each
#

# for
# - 配列、ハッシュの要素の数だけ繰り返す

for i in 15..20 do # doは省略可能 15..20(範囲を表すオブジェクト)
  p i
end

puts "===================="

# 配列
for color in ["red", "blue"] do
  p color
end
# ハッシュ
for name, score in {taguchi:200, fkoji:400} do
  puts "#{name}: #{score}"
end

# each
# - forは内部的にはeachを使っている
# - 集合的なオブジェクトのメソッドとして動作

(15..20).each do |i|
  p i
end

# 配列
["red", "blue"].each do |color|
  p color
end
# ハッシュ
{taguchi:200, fkoji:400}.each do |name, score|
  puts "#{name}: #{score}"
end

# do〜endを {}で省略表記
(15..20).each {|i| p i}

# 配列
["red", "blue"].each {|color| p color }
# ハッシュ
{taguchi:200, fkoji:400}.each {|name, score| puts "#{name}: #{score}" }
