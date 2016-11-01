#
# 20 アクセサを使う
#

class User
# アクセサ : クラスの外からでも(インスタンス変数に)アクセス(読み書き)出来るようにする
# 自動的に下記メソッドが作られる (２つ合わせてアクセサと呼ぶ)
# - setter name = (value) 書き 値を設定するメソッドを設定
# - getter name 読み

  # アクセサを使ってインスタンス変数の名前をシンボルで渡す
  # FAQ: シンボルとは何？ 結果、:name -> @nameということ？
  attr_accessor :name

  # getterだけ定義したい場合
  # attr_reader :name

  def initialize(name)
    @name = name # インスタンス変数
  end
  def sayHi
    # self : レシーバー
    # - メソッドを受け取っているインスタンス自身を指すオブジェクト
    # - この例ではtomのこと tomではなくてselfとして使える

    # 直接インスタンス変数を表示
    puts "hi! i am #{@name}"

    # レシーバオブジェクトにアクセサメソッドを組み合わせて表示
    puts "hi! i am #{self.name}"
    # self.name -> @name
    # .nameはgetterメソッド インスタンス変数が取得できる

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
