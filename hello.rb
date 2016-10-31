#
# 16 for each
#

# for 配列、ハッシュの要素の数だけ繰り返す

for i in 15..20 do # doは省略可能 15..20(範囲を表すオブジェクト)
  p i
end

# 配列
for color in ["red", "blue"] do
  p color
end

# ハッシュ
for name, score in {taguchi:200, fkoji:400} do
  puts "#{name}: #{score}"
end

## each

# forは内部的にはeachを使っている
# 集合的なオブジェクトのメソッドとして動作

(15..20).each do |i|
  p i
end

# 配列
["red", "blue"].each do |color|
  p color
end

# ハッシュ
{taguchi:200, fkoji:400}.each do |name, score|
  puts "#{name}: #{score}"
end

# 一行で表現したい場合はdo endを{}で省略表記
(15..20).each {|i| p i}

# 配列
["red", "blue"].each {|color| p color }

# ハッシュ
{taguchi:200, fkoji:400}.each {|name, score| puts "#{name}: #{score}" }

#
# 17.loop,beak,nextを使おう
#

## loop 永遠に処理を続ける

i = 0
loop do
  p i
  i += 1
end

## break 処理を抜ける
## next 再開

10.times do |i|
  if i == 7 then
    # break # 7で処理を抜ける
    next # 処理を飛ばす
  end
  p i
end

#
# 19クラスを作る
#

class User
  def sayHi
    puts "hi!"
  end
end

tom = User.new
tom.sayHi

# 変数を使って値を保持する
# 名前を渡してインスタンス内で保持するようにする
class User

  # initialize=newが呼ばれた時に呼ばれるメソッド
  def initialize(name)
    # @ インスタンス変数 インスタンスの中であればどこでも使用可能
    # e.g:メソッド内で定義した変数はその外からアクセスできない
    @name = name
  end
  def sayHi
    puts "hi! i am #{@name}"
  end
end

tom = User.new("tom")
tom.sayHi

bob = User.new("bob")
bob.sayHi

#
# 20アクセサを使う
#

class User
  #アクセサ : クラスの外からでもアクセス(読み書き)出来るようにする
  attr_accessor :name # インスタンス変数の名前をシンボルで渡す
  # 自動的に下記メソッドが作られる (２つ合わせてアクセサと呼ぶ)
  # setter name=(value) 値を設定するメソッドを設定
  # getter name 値を読み出すメソッドを設定

  # getterだけ定義したい場合
  # attr_reader :name
  def initialize(name)
    @name = name # インスタンス変数はClassの中でしか有効ではない
  end
  def sayHi
    # self :レシーバー
    # メソッドを受け取っているインスタンス自身を指すオブジェクト
    # この例ではtomのこと tomではなくてselfとして使える

    # 直接インスタンス変数を表示
    puts "hi! i am #{@name}"

    # レシーバオブジェクトにアクセサメソッドを組み合わせて表示
    puts "hi! i am #{self.name}"
    # self.name -> @name
    # .nameはgetter インスタンス変数が取得できる

    # 省略記法 意味が曖昧にならない限り省略可能
    puts "hi! i am #{name}"
  end
end

tom = User.new("tom")

# アクセサによって インスタンス変数を書き換える
tom.name = "tom Jr." # nameを書き換えるメソッド
p tom.name # nameを表示するメソッド

# tomがメソッドを受け取っているオブジェクト（=レシーバー)となる
tom.sayHi

#
# クラスメソッド、クラス変数を使う
#

# - クラスメソッド
# クラスから直接呼ぶことが出来る

# c.v. インスタンスメソッド
def sayHi
  puts "hi! i am #{self.name}"
end


class User

  # クラス変数 @@で始まる
  @@count = 0

  # クラス定数　大文字にする
  VERSION = 1.1

  def initialize(name)
    @@count += 1
    @name = name
  end
  def sayHi
    putsu "hi i am#{@name}"
  end
  # クラスメソッド -この中でクラス変数、定数が使える
  # self.hogehogeとするが、selfはレシーバー？
  def self.info
    # puts "User Class"

    # クラス変数を呼ぶ
    # puts "User Class, #{@@count} instances."
    # クラス定数を呼ぶ
    puts "#{VERSION}: User Class, #{@@count} instances."

  end
end

tom = User.new("tom")
bob = User.new("bob")
steve = User.new("steve")

# クラスメソッド(Userクラスからinfoメソッド呼ぶ)
User.info

# クラスの外からクラス定数を呼ぶことができる
p User::VERSION

#
# 22 クラスを継承する
#

# User: 親クラス、SuperClass
# AdminUser: 小クラス、SubClass

class User

  def initialize(name)
    @name = name
  end

  def sayHi
    puts "hi i am #{@name}"
  end
end

# Userクラスに新たなメソッドを加えたAdminUserクラスを作る
class AdminUser < User

  def sayHello
    puts "Hello from #{@name}"
  end

  # オーバーライド - 同名のメソッドを上書きできる
  def sayHi
    puts "hi! from admin!"
  end

end

tom = AdminUser.new("tom")
tom.sayHi
tom.sayHello

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
