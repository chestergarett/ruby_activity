class Confection
  def prepare
    puts "Baking at 350 degrees for 25 minutes"
  end
end

class Cupcake < Confection
  def prepare
    super 
    puts "Applying frosting"
  end
end

class BananaCake < Confection
  
end

new_cupcake = Cupcake.new
new_cupcake.prepare

new_banana_cake = BananaCake.new
new_banana_cake.prepare



