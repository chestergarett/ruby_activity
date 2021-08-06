class Hero
  def initialize(first_skill, second_skill, super_skill, passive_skill)
    @first_skill = first_skill
    @second_skill = second_skill
    @super_skill = super_skill
    @passive_skill = passive_skill
  end

  def view_skills
    puts "first skill is #{@first_skill}"
    puts "second skill is #{@second_skill}"
    puts "super skill is #{@super_skill}"
    puts "passive skill is #{@passive_skill}"
  end
end

chou = Hero.new("Jeet Kune Do", "Shunpo", "Way of the Dragon", "Only Fast")
chou.view_skills

granger = Hero.new("Death Sonata", "Ronda", "Rhapsody", "Caprice")
granger.view_skills


