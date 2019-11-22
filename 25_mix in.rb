#
# #25 ミックスイン
#

いろんなクラスで共通でつかいたいメソッドがある場合、
module でそのメソッドを定義して、それぞれのクラス内で module を include で呼んで共通の処理を使えるようにする



# ミックスイン
# PlayerにもMonsterにもDebugに関するメソッドを入れたい
#  →Player,Monsterは継承関係にない,両方に書くのは面倒
#   → moduleで定義してPlayter,Monsterから呼び出す　＝ ミックスインという

# まずはモジュールの定義
module Debug

  def info
    puts "#{self.class} debug info ..."
  end

end

class Player
  include Debug
end

class Monster
  include Debug
end

# infoというメソッドが使えるようになる
Player.new.info
Monster.new.info

test
