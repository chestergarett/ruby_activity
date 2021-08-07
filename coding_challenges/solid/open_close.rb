class SideCreeps
  def initialize(name)
    @name = name
  end

  def buff_drop
    GENERATORS[side_creep.type].new(name).effect()
  end
end

class BlueBuffDrop
  def initialize(name)
    @name = name
  end

  def effect
    puts "10% damage, 5% movement speed"
  end
end


class RedBuffDrop
  def initialize(name)
    @name = name
  end

  def effect
    puts "10% mana regen, 5% life regen"
  end
end
