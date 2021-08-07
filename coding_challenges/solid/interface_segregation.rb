##in my liskov_substition code example, Hero is the main class and Hero Type classes inherits all of the methods of Hero class not
## related to base stats method. applying interface segregation, made a Hero Type subclass specific only to generate base_stats

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
  
  class FighterHeroType < HeroType
    def base_stats
      puts "100 physical damage, 0 magic damage, 5% life regen, 0% mana regen"
    end
  end
  
  class MageHeroType < HeroType
    def base_stats
      puts "10 physical damage, 100 magic damage, 0% life regen, 30% mana regen"
    end
  end
  
  class SupportHeroType < HeroType
    def base_stats
      puts "0 physical damage, 0 magic damage, 20% life regen, 20% mana regen"
    end
  end