class Parcel

  def initialize (length, width, height, weight)
    @length = length.to_i
    @width = width.to_i
    @height = height.to_i
    @weight = weight.to_i
  end

  def specifications
    @length.to_s + ", " + @width.to_s + ", " + @height.to_s + ", " + @weight.to_s
  end

  def length
    @length
  end

  def width
    @width
  end

  def height
    @height
  end

  def weight
    @weight
  end

  def volume
    @length * @width * @height
  end

  def cost_to_ship
    if @length < 12 && @width < 12 && @height < 12
      return (@weight * 0.6 + volume * 0.01).round(2)
    else
      return ((@weight * 0.6 * 1.25) + (volume * 0.01)).round(2)
    end
  end
end
