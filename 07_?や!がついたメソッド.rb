#
# #07 ?や!がついたメソッドを使おう
#

# !
# 破壊的なメソッド(変数を上書き)

name = "taguchi"
puts name.upcase
puts name

puts name.upcase!
puts name #大文字に変わってるはず

# -upcase #文字列を大文字にして返す
# -upcase! #上記に加え、もとの文字列も大文字にする = 破壊的なメソッド
# 他のメソッド
# - downcase すべて小文字にする
# - reverse 逆順にする

# ?
# 真偽値を返すメソッド　true false #論理演算を行う

name = "taguchi"
p name.upcase?
p name.empty? #空かどうか
p name.include?("g") # gが含まれているか
p name
