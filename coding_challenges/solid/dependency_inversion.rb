class Hero
  def initialize(name,type, home)
    @name = name
    @type = type
    @home = home
  end

  def base_stats(type)
    type.base_stats
  end
end

class HeroType
  def base_stats
    raise "Not Implemented"
  end
end

class TankHeroType < HeroType
  def base_stats
    puts "50 physical damage, 0 magic damage, 30% life regen, 0% mana regen"
  end
end

tank = TankHeroType.new
khufra = Hero.new('khufra', tank, 'dire')
khufra.base_stats(tank)