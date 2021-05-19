require_relative "./cli"

class Game

    attr_accessor :title, :critic, :user, :description

    @@all = []

  def initialize
    @@all << self
  end

  def self.all
    @@all.reverse
  end

  def self.reset_all
    @@all.clear
  end

end