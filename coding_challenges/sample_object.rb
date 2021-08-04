class Hero
  def initialize(name, skill)
    @name = name
    @skill = skill
  end

  def log
    puts "#{@name} has used #{@skill}"
  end
end

hero = Hero.new('khufra', 'tyrant\'s revenge')
hero.log
