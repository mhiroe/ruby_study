#
# 21 クラスメソッド、クラス変数を使う
#

class User

  # クラス変数 @@で始まる
  @@count = 0
  # クラス定数　大文字にする
  VERSION = 1.1

  def initialize(name)
    @@count += 1
    @name = name
  end

  # インスタンスメソッド newが必要？
  def sayHi
    puts "hi! i am #{self.name}"
    puts "hi i am#{@name}"
  end

  # クラスメソッド
  def self.info
    # FAQ: self.hogehogeとするが、selfはレシーバー？

    # クラス変数を呼ぶ クラスメソッドの中で呼ぶ
    # puts "User Class, #{@@count} instances."
    # クラス定数を呼ぶ
    puts "#{VERSION}: User Class, #{@@count} instances."

  end
end

tom = User.new("tom")
bob = User.new("bob")
steve = User.new("steve")

# クラスメソッドは直接呼べる(Userクラスからinfoメソッド呼ぶ)
User.info

# クラスの外からクラス定数を呼ぶことができる
p User::VERSION
