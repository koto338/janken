def get_hand
  # ユーザーの入力した数字をuser_handに受け取る。
  puts "あなたの手は？(0:グー　1：チョキ　2：パー)"
  user_hand = gets.chomp

  # 0, 1, 2 以外の数字の場合は再入力を促す。
  while user_hand.match?(/\A[012]\z/) === false
    puts "あなたの手は？(0: グー 1: チョキ 2: パー)"
    user_hand = gets.chomp
  end
  hands = ["グー", "チョキ", "パー"]
  hands[user_hand.to_i]
end

def get_com_hand
  # コンピュータの手のパターンを配列にする
  hands = ["グー", "チョキ", "パー"]
  # コンピュータの手を配列からランダムに取り出す
  hands.sample
end

def judge_hands(user_hand, com_hand)
  if user_hand == com_hand
    "あいこ"
  elsif user_hand == "グー" && com_hand == "チョキ" ||
    user_hand == "チョキ" && com_hand == "パー" ||
    user_hand == "パー" && com_hand == "グー"
    "勝ち"
  else
    "負け"
  end
end
