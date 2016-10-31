#06 文字列オブジェクトを使おう

# 文字オブジェクトはクオートで囲む
# "" 特殊文字　式展開が可能
# '' 上記ができない
puts "hell\no worl\nd"
puts 'hell\no worl\nd'


puts "price #{3000 * 4}"
puts 'price #{3000 * 4}'

name = "taguchi"
puts "hello #{name}"

# +(連結) *(繰り返し)
puts "hello " + "world"
puts "hello " * 10
