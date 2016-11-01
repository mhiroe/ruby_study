#
# #26 例外処理
#

# 0を入力するとエラー化
x = gets.to_i
p 100 / x

# 例外処理
# - エラー時にわかりやすいメッセージをだしたり、自分なりの処理を追加する
# - 自分で例外クラスを作ってキャッチする

# rubyの標準エラーを継承
class MyError < StandardError; end # 中身がいらないので省略記法で１行に
x = gets.to_i

# begin~endで囲む
begin
  if x == 3
    raise MyError
  end
  p 100 / x

rescue MyError
  puts "not 3!"
rescue => ex #発生した例外をexというオブジェクトに入れる
  p ex.message # エラーメッセージを表示
  p ex.class # オブジェクトのクラス名を知りたい
  puts "stopped!" # 普通の処理も入れられる
ensure # エラーで止まっても最後に処理させる
  puts "--END--"
end
