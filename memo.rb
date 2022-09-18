require "csv" # CSVファイルを扱うためのライブラリを読み込んでいます

puts "1 → 新規でメモを作成する / 2 → 既存のメモを編集する"

memo_type = gets.to_i # ユーザーの入力値を取得し、数字へ変換しています

# if文を使用して続きを作成していきましょう。
if memo_type == 1
  puts "ファイル名を入力して下さい"
  name = gets.chomp
  
  puts "内容を入力して下さい\n入力後Ctrl+Dで保存します"
  input = STDIN.read
  CSV.open("#{name}.csv","w") do |content|
    content << ["#{input}"]
  end


elsif memo_type == 2
  puts "ファイル名を入力して下さい"
  name = gets.chomp
  
  puts "内容を入力して下さい\n入力後Ctrl+Dで保存します"
  input = STDIN.read
  CSV.open("#{name}.csv","a") do |content|
    content << ["#{input}"]
  end


else
  puts "1 または 2 を入力して下さい"
end
