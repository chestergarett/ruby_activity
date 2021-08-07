class Hero
  def initialize(name, home)
    @name = name
    @home = home
  end

  def skills(hero)
    hero.skills
  end
end

class Skills
  def initialize(first_skill,second_skill,super_skill, passive_skill)
    @first_skill = first_skill
    @second_skill = second_skill
    @super_skill = super_skill
    @passive_skill = passive_skill
  end

  def skills
    puts @first_skill
    puts @second_skill
    puts @super_skill
    puts @passive_skill
  end
end

tigreal = Hero.new('Tigreal', 'Radiant')
skills = Skills.new('skill_1', 'skill_2', 'ss', 'passive')
tigreal.skills(skills)
