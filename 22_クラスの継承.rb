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
