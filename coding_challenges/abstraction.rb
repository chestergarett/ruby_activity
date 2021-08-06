class HeroStats
  def initialize(kill,death,assist,total_gold, game_duration)
    @kill = kill.to_f
    @death = death.to_f
    @assist = assist.to_f
    @total_gold = total_gold.to_f
    @game_duration = game_duration.to_f
  end

  def display_stats
    puts kda_ratio
    puts gold_per_minute
  end

  private

  def kda_ratio
    return (@kill+@assist)/@death
  end

  def gold_per_minute
    return @total_gold/@game_duration
  end
end

mathilda = HeroStats.new(5,2,10,15000,60)
mathilda.display_stats
