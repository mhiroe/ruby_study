#
# 05 数値オブジェクトを使おう
#

# 数値
# 32 4.8　とか

# オブジェクトが何のclassなのか
p 4.8.class
# # オブジェクトが使用可能なメソッド
p 4.8.methods

# 四則演算メソッド + - * / %＝あまり　**=ぺき乗

p 10 + 3
p 10 * 3
p 2.4 * 3
p 10 / 3 #3
p 10 % 3 #1
p 100 / 3

# 有理数 ５ぶんの２を表現
p Rational(2, 5) +  Rational(3, 4)
p 2/5r + 3/4r

p 52.6.round #四捨五入
p 52.6.floor #小数点以下切り捨て
p 52.6.ceil #小数点以下切り上げ
