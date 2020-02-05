require_relative "../config/environment.rb"
require "date"

def reload
  load "config/environment.rb"
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console
c1 = Cult.new("Blue Oyster", "Kansas", 1979, "dont fear")
c2 = Cult.new("Pokemon", "Japan", 1994, "catch'um all!")
c3 = Cult.new("Yu-Gu-Oh", "China", 1996, "Don't catch'um all!")
c3 = Cult.new("Yu-Gu-Oh", "China", 1900, "Old")

f1 = Follower.new("Jazz", 28, "Just doing it")
f2 = Follower.new("Kevin", 26, "Ping-Pong bro")
f3 = Follower.new("Jonny", 40, "Lifes Good")
f4 = Follower.new("David", 13, "You can do it")

# b2 = BloodOath.new(c1, f1) #
# b1 = BloodOath.new(c2, f2) #
# b3 = BloodOath.new(c3, f2) #
# b4 = BloodOath.new(c3, f3) #
# b5 = BloodOath.new(c3, f4) #

binding.pry

puts "Mwahahaha!" # just in case pry is buggy and exits
