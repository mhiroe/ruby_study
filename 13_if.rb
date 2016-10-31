#
# 13 if 条件分岐してみよう
#

# - gets ユーザーから入力を受け付ける
score = gets.to_i
#　入力されるのは文字列なので怒られる、数値にする

# 比較演算子
# ==(等しい) !=(等しくない)

# 論理演算子
# &&(AND) ||(OR) !(NOT)

if score > 80 then # thenは省略可能
  puts "great!"
elsif score > 60 #その他条件
  puts "good!"
else #異なる場合
  puts "so so ..."
end

# 省略記法 単純なものはifを後ろに書ける
score = gets.to_i
puts "great!" if score > 80
