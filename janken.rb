require_relative "janken_method.rb"
continue_count = 3
score = 0
 
loop do
  # ユーザーの入力した数字をjankenに受け取る。
  user_hand = get_hand
  # コンピュータの手を配列からランダムに取り出す
  com_hand = get_com_hand
  result = judge_hands(user_hand, com_hand)
 
  puts "#{result}! あなたの手: #{user_hand}, ロボットの手: #{com_hand}"

  if result == "勝ち"
    score += 100
    puts "現在のスコア: #{score}"
  elsif result == "負け"
    if continue_count > 0
      continue_count -= 1
      puts "残りコンティニュー回数: #{continue_count}"
    else
      puts "GAME OVER"
      puts "現在のスコア: #{score}"
      # プレイを終了（ループを抜ける）
      break
    end
  end
end

  now = Time.now
  filepath = "#{__dir__}/log.txt"
  File.open(filepath, "a") do |file|
    file.puts "スコア：　#{score} #{now}"
end


