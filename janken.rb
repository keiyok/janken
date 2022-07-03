def janken_game
 puts "じゃんけん..."
 puts "0(グー)1(チョキ)2(パー)3(戦わない)"

 my_hand = gets.to_i

 puts "ホイ！"
 puts "--------------------"

 your_hand = rand(3)
 jankens = ["グー","チョキ","パー"]
 
 if my_hand ==3
  puts "不戦敗です。"
  puts "アプリを終了します。"
  exit
 end
 
 if my_hand > 3
  puts "0~3の値を入力してください。"
  puts "-------------------"
  janken_game
 end

 puts "あなた:#{jankens[my_hand]}を出しました。"
 puts "相手:#{jankens[your_hand]}を出しました。"
 puts "--------------------"

 if my_hand==0 && your_hand==0 || my_hand==1 && your_hand==1 || my_hand==2 && your_hand==2
  puts "あいこです。"
  puts "-------------------"
  janken_game
 elsif my_hand==0 && your_hand==1 || my_hand==1 && your_hand==2 || my_hand==2 && your_hand==0
  puts "あなたの勝ちです。"
  hoi_win()
 else
  puts "あなたの負けです。"
  hoi_lose()
 end
end
 
 
 
def hoi_win()
 puts "--------------------"
 puts "あっちむいて〜"
 puts "0(上)1(下)2(左)3(右)"

 my_finger = gets.to_i
 puts "ホイ！"
 puts "--------------------"

 finger = ["上","下","左","右"]
 your_finger = rand(4)
 
 if my_finger > 3
  puts "0~3の値を入力してください。"
  hoi()
 end

 puts "あなた:#{finger[my_finger]}"
 puts "相手:#{finger[your_finger]}"
 puts "--------------------"

 if my_finger ==0 && your_finger ==0 || my_finger ==1 && your_finger ==1 || my_finger ==2 && your_finger ==2 || my_finger ==3 && your_finger ==3
  puts "あなたの勝ちです。"
 else
  puts "ハズレです。"
  puts "-------------------"
  janken_game
 end
end

def hoi_lose()
 puts "--------------------"
 puts "あっちむいて〜"
 puts "0(上)1(下)2(左)3(右)"

 my_finger = gets.to_i
 puts "ホイ！"
 puts "--------------------"

 finger = ["上","下","左","右"]
 your_finger = rand(4)
 
 if my_finger > 3
  puts "0~3の値を入力してください。"
  hoi()
 end

 puts "あなた:#{finger[my_finger]}"
 puts "相手:#{finger[your_finger]}"
 puts "--------------------"

 if my_finger ==0 && your_finger ==0 || my_finger ==1 && your_finger ==1 || my_finger ==2 && your_finger ==2 || my_finger ==3 && your_finger ==3
  puts "あなたの負けです。"
 else
  puts "上手に回避しました。"
  puts "-------------------"
  janken_game
 end
end


janken_game()