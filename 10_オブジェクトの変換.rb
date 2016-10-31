#
# #10. オブジェクトを変換してみよう
#
# オブジェクトの種類を揃える、ハッシュと配列を入れ替える

x = 50  #integer
y = "3" #string

p x + y.to_i # 53 intergerに変換
p x + y.to_f # 53.0 floatingに変換
p x.to_s + y  # "503" integerに変換

# ハッシュと配列の相互変換
scores = {taguchi: 200, fkoji: 400}
p scores
p scores.to_a # array(配列)に変換 →キーと値が配列になった、配列になる
p scores.to_a.to_h # arrayに変換後、またhashに戻す
