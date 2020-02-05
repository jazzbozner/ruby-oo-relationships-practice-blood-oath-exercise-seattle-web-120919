class Follower
  attr_accessor :name, :age, :life_motto
  @@all = []

  def initialize(name, age, life_motto)
    @name = name
    @age = age
    @life_motto = life_motto
    @@all << self
  end

  def self.all
    @@all
  end

  # returns a list of the follower's cults via Blood Oath
  def cults
    BloodOath.all.select { |oath| oath.follower == self }
  end

  def join_cult(cult)
    BloodOath.new(cult, self)
  end

  def self.of_a_certain_age(age)
    self.all.select do |follower|
      if follower.age >= age
        follower.name
      end
    end
  end
end
