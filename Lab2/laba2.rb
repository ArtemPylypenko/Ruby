class Point
  attr_accessor :x, :y
  @@all = []

  def initialize(x,y)
    @x=x
    @y=y
    @@all <<self
  end
  def self.all
    @@all
  end
end

$points = Array.new

$points.push((Point.new 514,  19),
             (Point.new 515,  56),
             (Point.new 506, 107),
             (Point.new 492, 154),
             (Point.new 314, 185),
             (Point.new 283, 234),
             (Point.new 205, 233),
             (Point.new 134, 220),
             (Point.new 78, 202),
             (Point.new 68, 179),
             (Point.new 67, 148),
             (Point.new 82,  118),
             (Point.new 90,  94),
             (Point.new 92,  59),
             (Point.new 94,  42),
             (Point.new 107,  29),
             (Point.new 155,  32),
             (Point.new 199,   60),
             (Point.new 224,  51),
             (Point.new 245,  37),
             (Point.new 279,  31),
             (Point.new 306, 32),
             (Point.new 342, 28),
             (Point.new 365, 22),
             (Point.new 397, 16),
             (Point.new 443,  26),
             (Point.new 468,  39),
             (Point.new 488,  32))

result = 0
for i in 0...$points.length do
  unless i == $points.length-1
    result += ($points[i].x + $points[i + 1].x) * ($points[i].y - $points[i + 1].y)
  else
    result += ($points[i].x + $points[0].x) * ($points[i].y - $points[0].y)
  end
end
result = (result.abs)*0.5
print("Res= ",result)