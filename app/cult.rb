class Cult
  attr_accessor :name, :location, :founding_year, :slogan, :population
  @@all = []

  def initialize(name, location, founding_year, slogan)
    @name = name
    @location = location
    @founding_year = founding_year
    @slogan = slogan
    @population = 0
    @@all << self
  end

  def recruit_follower(follower)
    BloodOath.new(self, follower)
    @population += 1
  end

  # Check BloodOath
  # return count of followers
  # check by cult object
  def cult_population
    BloodOath.all.select { |oath| self == oath.cult }.count
  end

  def self.all
    @@all
  end

  # itterate through Blood Oath
  # check cult's name to return
  # which cults they belong to
  def self.find_by_name(name)
    self.all.find { |cult| cult.name == name }
  end

  def self.find_by_location(location)
    self.all.find_all { |cult| cult.location == location }
  end

  def self.find_by_founding_year(year)
    self.all.select { |cult| cult.founding_year == year }
  end

  def followers
    BloodOath.all.select do |oath|
      if self == oath.cult
        oath.follower
      end
    end
  end

  def average_age
    counter = 0
    followers.each do |oath|
      counter += oath.follower.age
    end
    counter / cult_population
  end

  def my_followers_mottos
    followers.each { |oath| puts oath.follower.life_motto }
  end

  def self.least_popular
    sorted = self.all.sort do |cult|
      cult.population
    end
    sorted.first
  end

  # putting all locations in an array, then count ughaughagghagu!
  def self.most_common_location
    most_common = self.all.uniq.max_by { |cult| self.all.count(cult.location) }
    most_common
  end
end
