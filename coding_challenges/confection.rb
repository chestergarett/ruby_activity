class Confection
  def baked
    puts "Baking at 350 degrees for 25 minutes"
  end
end

class Cupcake < Confection
  def frosted
    puts "Applying frosting"
  end
end

class BananaCake < Confection
  
end

new_cupcake = Cupcake.new
new_cupcake.baked
new_cupcake.frosted

new_banana_cake = BananaCake.new
new_banana_cake.baked
new_banana_cake.frosted



