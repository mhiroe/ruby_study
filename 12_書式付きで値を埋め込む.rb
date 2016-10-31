#
# 12 書式付きで値を埋め込もう
#

# 記法 : "文字列 引用符+書式" %値
# 書式 :  %s(文字列) %d(整数) %f(浮動小数)

# 文字列の中に文字列を埋め込む
p "omake %s omake" % "taguchi"

p "name: %s" % "taguchi"
p "name: %10s" % "taguchi" #書式の指定を追加できる 10桁分の幅を確保して値を表示
p "name: %-10s" % "taguchi" #10桁分左寄せして値を表示

# 文字列の中に数値を入れ込む
p "id: %d, rate: %f" % [355, 3.284] #値を配列で渡せる

# 数値の書式
p "id: %05d, rate: %10.2f" % [355, 3.284]
# %05d ５桁にしたいが５桁に満たない場合
# %10.2f 小数点の前が10桁、後が２桁

# printfを使った場合 "%"ではなく","になる
# - printf 書式付きで文字列を表示
printf("name: %s\n", "taguchi") # (\n改行を入れて見やすく)
printf("id: %05d, rate: %10.2f\n", 355, 3.284)

# springfを使った場合
# - springf=文字列を返す
p sprintf("name: %s\n", "taguchi")
p sprintf("id: %05d, rate: %10.2f\n", 355, 3.284)
