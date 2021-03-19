puts "じゃんけん..."

@hand = ["グー", "チョキ", "パー", "戦わない"]

@muki = ["上", "下", "左", "右"]

@hand_call = "ホイ"
  
  
def attimuite(num)
  puts "あっち向いて...\n"
  
  for i in 0..3
    print i, ":", @muki[i], " "
  end
  
  puts "\n"
  
  
  
  if(num == 1)
    npc_muki = rand 4
    me_muki = gets.chomp.to_i
    
    print "********************************\n"
    print "相手:", @muki[npc_muki], "\n"
    print "あなた:", @muki[me_muki], "\n"
    print "********************************\n"
    
    of = "相手"
    df = "自分"
    
  else
    me_muki = gets.chomp.to_i
    npc_muki = rand 4
    
    print "********************************\n"
    print "あなた:", @muki[me_muki], "\n"
    print "相手:", @muki[npc_muki], "\n"
    print "********************************\n"
    
    of = "自分"
    df = "相手"
    
  end
  
  #処理
  if(me_muki == npc_muki)
    print "#{of}の勝ち\n"
  else
    print "#{df}の勝ち\n"
  end
end

def janken
  for i in 0..3
    print i, ":", @hand[i], " "
  end
  
  puts "\n"
  
  a = gets.chomp.to_i

  num = rand 3
  
  if (a == 3)
    return 3
  
  else
    puts "#{@hand_call} \n"
    
    print "********************************\n"
    print "あなた:", @hand[a], "を出しました。\n"
    print "相手:", @hand[num], "を出しました。\n"
    print "********************************\n"
    
    #判定
   if (a - num + 3) % 3 == 0
      print "あいこで\n"
      @hand_call = "ショ！\n"
      janken
   elsif (a - num + 3) % 3 == 2
      print "勝ち\n"
      return 0
   else
      print "負け\n"
      return 1
   end
  end
end


loop do
  num = janken
  
  if (num == 3)
    break
  else
    attimuite(num)
  end
end