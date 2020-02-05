require "date"

class BloodOath
  attr_reader :initiation_date, :follower, :cult
  @@all = []

  def initialize(cult, follower)
    @cult = cult
    @follower = follower
    @initiation_date = Time.now
    @@all << self
  end

  def self.all
    @@all
  end
end
