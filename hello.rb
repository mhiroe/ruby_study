#
# 23 メソッドのアクセス権について
#

# - public　通常デフォルトでpublicになる
# どこからでもアクセスできる
# 例外：newした時に呼ばれる .initialiseとclassの外に書いたメソッドは自動的にprivateになる

# - private レシーバーを指定できないメソッド
# - protected 特殊な場合しか使われないので、おいておく

class User

  def sayHi
    puts "hi!"
    sayPrivate # OK
    # 省略しない書き方は下レシーバを指定できないので省略すると、呼び出すことができる
    # self.sayPrivate
  end

  # privateメソッドの定義
  private
    def sayPrivate
      puts "private"
    end

end

class AdminUser < User

  def sayHello
    puts "Hello!"
    sayPrivate # 親クラスのprivateメソッドを呼び出し可能
  end

  # privateメソッドを上書いてpublicメソッドに変えてしまっている
  def sayPrivate
    puts "private from admin"
  end

end

# User.new.sayPrivate # レシーバを指定できないのでNG
# User.new.sayHi # private methodを他のclassから呼び出し 他の言語では出来ない
AdminUser.new.sayPrivate

#
# 24 モジュールで名前空間を作る
#

# module
# クラスのようにmethod定数をまとめらえるが、インスタンスを作ったり継承したりはできない

# -名前空間として使う

# 他の人が同名のメソッドを作った場合衝突する、
# 同じ名前でも自分だけの名前空間を使えば大丈夫

# モジュールの定義
# Movieモジュールの名前空間の中にあるので、外部で重複したメソッドがあっても問題ない
module Movie #必ず頭大文字

  VERSION = 1.1

  # ClassMethodと同じ
  def self.encode
    puts "encodeing..."
  end

  def self.export
    puts "exporting..."
  end

end
# 呼び出し方
Movie.encode
Movie.export
p Movie::VERSION

#
# #25 ミックスイン
#

# - ミックスイン　moduleのもう一つの用途

module Debug

  def info
    puts "#{self.class} debug info ..."
  end

end

# PlayerにもMonsterにもDebugに関するメソッドを入れたい
#  →Player,Monsterは継承関係にない,両方に書くのは面倒
#   → moduleで定義してPlayter,Monsterから呼び出す　＝ ミックスインという

class Player
  include Debug
end

class Monster
  include Debug
end

# infoというメソッドが使えるようになる
Player.new.info
Monster.new.info


=end
#
# #26 例外処理
#

# ユーザ入力0とするとエラー化してしまう

# x = gets.to_i
# p 100 / x


# 例外処理
# エラー時にわかりやすいメッセージをだしたり、自分なりの処理を追加する

# 自分で例外クラスを作ってキャッチする
# rubyの標準エラーを継承して追加

class MyError < StandardError; end # 中身がいらないので省略記法で１行に
x = gets.to_i

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
ensure # エラーで止まっても最後に処理させたい場合
  puts "--END--"
end
