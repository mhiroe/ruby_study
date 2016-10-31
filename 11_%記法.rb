#
# 11.%記法を使ってみよう
#

# ダブルクオートの文字列
puts "he\"llo" # 改行 通常バックスラッシュが必要
puts %Q(he"llo) #上記と同じ 区切り文字の記法がそのまま書ける
puts %(he"llo) #省略記法

# シングルクオートの文字列
puts 'he\'llo'
puts %q(he'llo)

# 配列で文字列を管理する場合の省略記法
p ["red", "blue"]
p %W(red blue)

p ['red', 'blue']
p %w(red blue)
