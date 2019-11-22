#
# 24 モジュールで名前空間を作る
#

# module
# -クラスのようにmethod定数をまとめられるが、インスタンスを作ったり継承したりはできないもの
# -名前空間として使う

# モジュールの定義
# Movieモジュールの名前空間の中にあるので、外部で重複したメソッドがあっても問題ない
# - export,inportメソッド名はよく衝突する

module Movie #必ず頭大文字

  VERSION = 1.1

  # ClassMethodと同じ定義方法
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
