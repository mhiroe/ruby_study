#
# 09 ハッシュオブジェクトを使う
#

# ハッシュ
# - key /value を扱うことができる

# taguchi 200
# fkoji 400

# ハッシュ基本的な記法
scores = {"taguchi " => 200, "fkoji" => 400}

# シンボルオブジェクト （よく使う
# - シンボル＝コロン(:)から始まる識別子のようなオブジェクト、
# - 文字列で使うより高速で処理が可能でrubyでよく使われる

scores = {:taguchi => 200, :fkoji => 400}
scores = {taguchi: 200, fkoji: 400} # 省略記法(上記とおなじ)

p scores[:taguchi] #配列と同じキーを与えると値を引っ張ってこれる
scores[:fkoji] = 600 #値の書き換え

p scores #ハッシュを全表示

# ハッシュ関連メソッド
p scores.size # 一覧
p scores.keys # キーだけ引っ張ってくる
p scores.values #バリューだけ引っ張ってくる
p scores.has_key?(:taguchi)
