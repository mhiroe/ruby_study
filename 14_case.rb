#
# 14. Caseで条件分岐してみる
#

# ユーザ入力
signal = gets.chomp # 改行を削除

case signal
when "red" then # then省略可能
  puts "stop!"
when "green", "blue" # カンマ区切りで複数記述可能
  puts "go!"
when "yellow"
  puts "caution!"
else
  puts "wrong signal"
end
