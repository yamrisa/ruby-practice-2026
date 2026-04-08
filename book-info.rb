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

    # アクセサの提供(インスタンス変数の読み書き)
    attr_accessor :title, :author, :page, :publish_date

    # 文字列返却
    def to_s
        "#{@title}, #{@author}, #{@page}, #{@publish_date}"
    end

    # 表示フォーマットの成形
    def toFormatedstring( sep = "¥n" )
        "書籍名：#{@title}#{sep}著者名:#{@author}#{sep}ページ数：#{@page}#{sep}発刊日：#{@publish_date}#{sep}"
    end
end

# 蔵書データを登録する
# book_info = BookInfo.new(
#     "POMPONNER",
#     "ねり悶",
#     50,
#     Date.new(2025, 6, 15)
# )

# 複数冊の蔵書データを登録する（ハッシュを利用）
book_infos = Hash.new

book_infos["Str_nerimon"] = BookInfo.new(
    "POMPONNER",
    "ねり悶",
    50,
    Date.new(2025, 6, 15)
)

book_infos["Str_allburan"] = BookInfo.new(
    "め",
    "Allブラン",
    60,
    Date.new(2025, 6, 15)
)

# 出力
# puts book_info.to_s
# puts book_info.toFormatedstring("/")

# １冊ずつ出力する
book_infos.each { |k ,v|
    puts "#{k}:#{v.to_s}"

}



# puts "書籍名：" + book_info.title 
# puts "著者名：" + book_info.author
# puts "ページ数：" + book_info.page.to_s + "ページ"
# puts "発刊日：" + book_info.publish_date.to_s 



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
