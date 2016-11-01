#
# 23 メソッドのアクセス権について
#

# public　通常デフォルトでpublicになる
# - どこからでもアクセスできる
# - 例外：newした時に呼ばれる .initialiseとclassの外に書いたメソッドは自動的にprivateになる

# private レシーバーを指定できないメソッド
# protected 特殊な場合しか使われないので、おいておく

class User
  # privateメソッドの定義
  private
    def sayPrivate
      puts "private"
    end

  def sayHi
    puts "hi!"
    sayPrivate # OK
    # self.sayPrivate
    # ↑省略しない書き方だが、レシーバを指定できないので省略すると、呼び出すことができる
  end
end

class AdminUser < User
  def sayHello
    puts "Hello!"
    sayPrivate # 親クラスのprivateメソッドを呼び出し可能
  end

  def sayPrivate
  # FAQ privateメソッドを上書いてpublicメソッドに変えている？
    puts "private from admin"
  end
end

# User.new.sayPrivate # レシーバを指定できないのでNG
# User.new.sayHi # private methodを他のclassから呼び出し 他の言語では出来ない
AdminUser.new.sayPrivate
