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
# FAQこの時点でtomはただのオブジェクトで、値ではないはず?
# ->tomを他の名前にして確認してみる

# 名前を渡してインスタンス内で変数を使って値を保持する
class User

  # initialize newが呼ばれた時に呼ばれるメソッド
  def initialize(name)
    # @(アットマークを使う) インスタンス変数 インスタンスの中であればどこでも使用可能
    # - メソッド内で定義した変数はその外からアクセスできない
    @name = name # new()で渡された値を@nameに格納する
  end
  def sayHi
    puts "hi! i am #{@name}"
  end
end

tom = User.new("tom")
tom.sayHi

bob = User.new("bob")
bob.sayHi
