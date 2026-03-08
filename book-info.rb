# 表示したい蔵書データを作成する
require "date"


class BookInfo
    # インスタンスの初期化
    def initialize(title, author, page, publish_date)
        @title = title
        @author = author
        @page = page
        @publish_date = publish_date
    end

    # アクセサの提供
    attr_accessor :title, :author, :page, :publish_date

    # 文字列返却
    def to_s
        "#{@title}, #{@author}, #{@page}, #{@publish_date}"
    end
end

# BookInfoクラスのインスタンスを作成し、book_infoへ格納
book_info = BookInfo.new(
    "POMPONNER",
    "ねり悶",
    50,
    Date.new(2025, 6, 15)

)
puts book_info.to_s

puts "書籍名：" + book_info.title 
puts "著者名：" + book_info.author
puts "ページ数：" + book_info.page.to_s + "ページ"
puts "ページ数：" + book_info.publish_date.to_s 



# title = [
#     "POMPONNER",
#     "煌砂の残片"
# ]
# author = [
#     "ねり悶",
#     "秋十"
# ]
# yomi = [
#     "ねりもん",
#     "あきと"
# ]
# publisher = [
#     "同人誌",
#     "同人誌"
# ]
# page = [
#     50,
#     60
# ]
# price = [
#     500,
#     600
# ]
# purchase_price =[
#     525,
#     630
# ]
# publish_date = Date.new(2025, 6, 1)
# purchase_day = Date.new(2025, 6, 15)

# 蔵書データを表示する
# title.size.times { |i|
#     puts "--------------------------------------------"
#     puts "書籍名：" + title [i]
#     puts "著者名：" + author [i]
#     puts "読み仮名：" + yomi [i]
#     puts "出版社：" + publisher [i]
#     puts "ページ数：" + page [i].to_s + "ページ"
#     puts "価格：" + price [i].to_s + "円"
#     puts "税込価格：" + purchase_price [i].to_s + "円"
# }
