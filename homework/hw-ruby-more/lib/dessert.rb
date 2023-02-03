class Dessert

  # Access name
  attr_reader :name

  # Access calories
  attr_reader :calories

  # Mutate name
  attr_writer :name

  # Mutate calories
  attr_writer :calories

  # Construct a new Dessert
  def initialize(name, calories)
    @name = name
    @calories = calories
  end

  # Desert is healthy if it less than 200 cal
  def healthy?
    if @calories < 200
      return true
    else
      return false
    end
  end

  # Dessert is delicious!
  def delicious?
    return true
  end
end


class JellyBean < Dessert

  # Access flavor
  attr_reader :flavor

  # Mutate flavor
  attr_writer :flavor

  # Construct a new JellyBean
  def initialize(flavor)
    @flavor = flavor
    @calories = 5
    @name = flavor + " jelly bean"
  end

  # Licorice flavor is not delicious
  def delicious?
    if flavor == "licorice"
      return false
    else
      return true
    end
  end
end
