# RSpecでRailsを使えるようにする準備。
require 'rails_helper'

# Postクラスのテストを書くよ
RSpec.describe Post, type: :model do
  # テストの説明文
  it "is valid with a title" do
    # Postクラスのインスタンス作ってる
    post = Post.new(title: "Hello")
    # テスト本体
    expect(post).to be_valid
  end
end