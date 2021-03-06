
# 01-03 rubyとは

# rubyの特徴
# プログラマーが楽しくプログラミングする

# ローカル開発環境
# @ドットインストールの環境
# - version v2.3.1p11
# - irb インタラクティブシェル
# - ri ドキュメント

# コメントの書き方

# 一行の場合はこのように

=begin　
  まとめてコメント
  命令末尾；　改行で省略できる
  渡したオブジェクトを文字列にして表示する
  "" 文字列を表現するクオートとして使う
=end

## よく使う"p"メソッドの種類

puts "hello World"  #改行を追加 プットエスと呼んでいる
print "hello World" #改行なし
p "hello World" #デバック用

# オブジェクトの種類をわかりやすくするため、""付きで結果を返してくれる)
# 複雑なデータだったら構造がわかりやすい

##　変数

# 英小文字で始める
msg = "hello world"
puts msg
# 値は書き換わる
msg = "hello world again"
puts msg

# 定数
# - 英大文字(一部？)

VERSION = 1.1
puts VERSION
# 値が書き変わらないのでエラーが出る（本当はエラー処理を行う
VERSION = 1.2
puts VERSION
