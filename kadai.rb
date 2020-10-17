puts <<~TEXT
       旅行プランを選択してください
       1. 沖縄旅行(¥10,000)
       2. 北海道旅行(¥20,000)
       3. 九州旅行(¥15,000)
     TEXT

$plan_number = gets.to_i
puts "プランを選択 > #{$plan_number}"

plans = { okinawa: "沖縄旅行", hokkaido: "北海道旅行", kyuushuu: "九州旅行" }

if $plan_number == 1
  plan_name = plans[:okinawa]
elsif $plan_number == 2
  plan_name = plans[:hokkaido]
elsif $plan_number == 3
  plan_name = plans[:kyuushuu]
else
  return puts "1~3の数値を入力してください"
end

puts "#{plan_name}ですね、何人で行きますか？"

$number_of_people = gets.to_i

def total_price
  if $plan_number == 1
    total_price = $number_of_people * 10000
  elsif $plan_number == 2
    total_price = $number_of_people * 20000
  elsif $plan_number == 3
    total_price = $number_of_people * 15000
  end

  if $number_of_people >= 5
    # 10%割引の合計金額
    (total_price * 0.9).to_i
  else
    total_price
  end
end

if $number_of_people >= 5
  puts "5人以上なので10%割引となります"
  puts "合計料金：#{total_price}"
else
  puts "合計料金：#{total_price}"
end
