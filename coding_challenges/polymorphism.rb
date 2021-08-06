class HeroStreak
  def streak_message(hero)
    hero.streak_message
  end
end

class Ally_Hero
  def initialize(name)
    @name = name
  end

  def streak_message
    puts "Killing Spree"
  end
end

class Enemy_Hero
  def initialize(name)
    @name = name
  end

  def streak_message
    puts "Godlike"
  end
end

hero_streak = HeroStreak.new
ling = Ally_Hero.new("Ling")
hero_streak.streak_message(ling)

yi_shun_shin = Enemy_Hero.new("Yi Shun Shin")
hero_streak.streak_message(yi_shun_shin)
