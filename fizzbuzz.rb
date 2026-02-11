#######################################
# 
# (はじめ..おわり).each do |変数|
# if 条件
#       処理
#   elsif 条件
#       処理
#   else
#       処理
#   end
# end
# 
#######################################

# (1..100).each do |i|
#     if i % 3 == 0 && i % 5 == 0 && i % 7 == 0
#         puts "FizzBuzzJazz"
#     elsif i % 3 == 0 && i % 5 == 0
#         puts "FizzBuzz"
#     elsif i % 3 == 0 && i % 7 == 0
#         puts "FizzJazz"
#     elsif i % 3 == 0
#         puts "Fizz"
#     elsif i % 5 == 0
#         puts "Buzz"
#     elsif i % 7 == 0
#         puts "Jazz"
#     else
#         puts i
#     end
# end

# 長いからTrueなら変数に足してく処理にする

(1...100).each do |i|
    result = ""                            #箱を用意する
    result << "Fizz" if i % 3 == 0         #Trueなら後ろに追加する
    result << "Buzz" if i % 5 == 0         #Trueなら後ろに追加する
    result << "Jazz" if i % 7 == 0         #Trueなら後ろに追加する

    if result == ""                        #空の場合の処理と出力処理
        puts i
    else
        puts result
    end

end
    