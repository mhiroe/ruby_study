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
  # 7の時に処理に入る
  if i == 7 then
    # break # 7まできたら処理を抜ける
    next # 処理を飛ばす
  end
  p i
end
