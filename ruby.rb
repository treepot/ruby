#!/usr/local/bin/ruby2.0
puts "Content-Type: text/html\n\n"

#コメント

=begin
複数行
コメント
コマンドの最後の「;」は改行で省略できる
=end

# print "hello world"
# puts "hello world"# 改行が付く
# p "hello world"# デバッグ用


#変数
#英小文字か_で始める

# msg = "変数"
# puts msg
#
# msg = "変数2"
# puts msg

# 定数
# 英大文字で始める

# VERSION = 1.1
# puts VERSION

=begin
既に使用している定数なので警告が出る↓
ruby.rb:29: warning: already initialized constant VERSIO
N
ruby.rb:26: warning: previous definition of VERSION was
here
=end
# VERSION = 1.2
# puts VERSION

=begin
オブジェクトについて
String：文字列
Float
'hello world'.length
'hello world'をインスタンス
lengthをメソッドという
=end

# 数値
# 型の確認
# p 4.8.class
# p 4.8.methods

# 四則演算 + - * / %(余り) **(べき乗)
# 分数 ： Rational(2, 5) または 2/5r ： 5分の2
# 52.6.round # 四捨五入
# 52.6.floor # 切り捨て
# 52.6.ceil # 切り上げ

# 文字列
# "" 特殊文字 式展開可能
# ''
# hensu = "hensu"
# puts "he\nllo wor\tld #{3000 * 4} #{hensu}"
# 「option + ¥」で「\」
# \n #改行
# \t #タブ
# puts 'he\nllo wor\tld #{3000 * 4} #{hensu}'

# + *
# puts "hello " + "world" #接続
# puts "hello" * 10 #繰り返し

# !
# upcase：文字列を大文字にする
# upcase!：元の文字列も書き換える。破壊的なメソッド

# exq = "test"
# puts exq.upcase
# puts exq
# puts exq.upcase!
# puts exq

# downcase：小文字にする
# reverse：文字順を逆にする

# ? 真偽値 true false
# p exq.empty?#空?
# p exq.include?("a")#aを含む?

# 配列
# colors = ["red", "blue", "yellow"]
# p colors[0] # red
# p colors[-1] #末尾から1つ目
# p colors[0..2] #範囲指定。0〜2
# p colors[0...2] #0〜1
# p colors[5] #nil：何もない
#
# colors[0] = "pink"#書き換え
# colors.push("gold")#追加
# colors << "silver"#追加
# p colors
#
# p colors.size # 個数
# p colors.sort # 並び替え

# ハッシュ
# key value
# hash = {"a" => 1, "b" => 2}
# hash = {:a => 1, :b => 2} # シンボル。こちらの方が動作が早い
# hash = {a: 1, b: 2}
#
# p hash[:a]
# p hash.keys# keyの一覧
# p hash.values# 値の一覧
# p hash.has_key?(:c)# cというkeyがあるか

#変換
# x = 50
# y = "3"
#
# p x + y.to_i# 整数に変換
# p x + y.to_f# 浮動小数点数に変換
# p x.to_s + y# 文字列に変換
#
# p hash.to_a# 配列に変換
# p colors.to_h# ハッシュに変換


# %
# puts "hello"# と
# puts %Q(hello)
# puts %(hello)# は同じ
# puts 'hello'# と
# puts %q(hello)# も同じ
# 利点：()の中で"や'を\なしで使える

# p ["red", "blue"]# と
# p %W(red blue)# は同じ
# p ['red', 'blue']# と
# p %w(red blue)# も同じ


# "文字列"に%で値を埋め込む
# p "a: %d, b: %d" % [1, 2]# %s：文字列、%d：整数、%f：浮動小数点数
# p "a: %10s" % "1"
# p "a: %-10s" % "1"
# p "a: %05d" % 1# 5桁表示。5桁以下の場合は0で埋める

# if
# score = gets.to_i# gets：ユーザーからの入力
# if score > 80 then
#   puts "great"
# elsif score > 60
#   puts "good"
# else
#   puts "so so ..."
# end

# 後置のif
# puts "great" if score > 80

# case
# signal = gets.chomp # chomp：getsは最後に改行が付いてくるのでそれを削除
# case signal
# when "red"
#   puts "stop"
# when "green", "blue" #複数の条件
#   puts "go"
# when "yellow"
#   puts "caution"
# else
#   puts "wrong signal"
# end

# 繰り返し
# while
# i = 0
# while i < 10 do
#   puts "#{i}:hello"
#   i += 1
# end

# times　メソッド
# 10.times do |i|# |i|はオプション
#   puts "#{i}:hello"
# end

# do ... end　は{...}で代替え可
# 10.times { |i| puts "#{i}:hello" }

# for
# for i in 15..20 do
#   p i
# end

#配列ver
# for color in ["red", "blue"] do
#   p color
# end

#ハッシュver
# for key, value in {a:1, b:2} do
#   puts "#{key}: #{value}"
# end

# each　メソッド 上記はeachで置き換え可能
# (15..20).each { |i| p i }
# ["red", "blue"].each { |color| p color }
# {a:1, b:2}.each { |key, value| puts "#{key}: #{value}" }

# loop 永遠に処理を繰り返す。cntr + Cでストップ
# i = 0
# loop do
#   p i
#   i += 1
# end

# break, next
# 10.times do |i|
#   if i == 7 then
#     break # 終了
#     #next # skip
#   end
#   p i
# end

# メソッドを作る メソッド内で使用した変数は外で使用できない
# def sayHi(name = "tom") # (引数 = デフォルト値)
#   puts "hi #{name}"
  # return "hi #{name}" # 値を返す（returnは省略しても返す）
# end
# sayHi("takuya")
# sayHi "takuya"
# p sayHi

# クラスを作る
# class User # 大文字から始める
#   def sayHi
#     puts "hi"
#   end
# end
#
# tom = User.new# Userのインスタンスを作る
# tom.sayHi
#
# class User # 大文字から始める
#   def initialize(name)
#     @name = name# @~：インスタンス変数（インスタンスの中であれば他でも使える）
#   end
#   def sayHi
#     puts "hi! i am #{@name}"
#   end
# end
#
# tom = User.new("tom")
# tom.sayHi
# bob = User.new("bob")
# bob.sayHi

# アクセサリ
# インスタンス変数を外で使う方法 attr_accessor

class User
  attr_accessor :name
  #attr_reader :name
  # setter:name=(value)
  # getter:name
  def initialize(name)
    @name = name
  end
  def sayHi
    # self
    # self.name = @name
    puts "hi! i am #{@name}"
    # puts "hi! i am #{self.name}" # selfは意味が曖昧にならない限り省略可能
  end
end

tom = User.new("tom")
tom.name = "tom Jr."
p tom.name
tom.sayHi #レシーバー

# クラスメソッド
# クラス変数 @@

#test
