class Hero
  def initialize(name, home)
    @name = name
    @home = home
  end

  def base_skills
    #insert hero skills here
  end

  def base_stats
    raise "Not Implemented"
  end

  def base_effects
    #code for other side effects of hero based on type
  end
end

class TankHeroType < Hero
  def base_stats
    puts "50 physical damage, 0 magic damage, 30% life regen, 0% mana regen"
  end
end

class FighterHeroType < Hero
  def base_stats
    puts "100 physical damage, 0 magic damage, 5% life regen, 0% mana regen"
  end
end

class MageHeroType < Hero
  def base_stats
    puts "10 physical damage, 100 magic damage, 0% life regen, 30% mana regen"
  end
end

class SupportHeroType < Hero
  def base_stats
    puts "0 physical damage, 0 magic damage, 20% life regen, 20% mana regen"
  end
end