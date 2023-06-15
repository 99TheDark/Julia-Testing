import Base.:+;
import Base.:-;
import Base.:*;
import Base.:/;
import Base.:^;

struct Point
	x::Float64
	y::Float64
end

+(a::Point, b::Point) = Point(a.x + b.x, a.y + b.y)
-(a::Point, b::Point) = Point(a.x - b.x, a.y - b.y)
*(a::Point, b::Point) = Point(a.x * b.x, a.y * b.y)
/(a::Point, b::Point) = Point(a.x / b.x, a.y / b.y)
+(a::Point, b::Number) = Point(a.x + b, a.y + b)
-(a::Point, b::Number) = Point(a.x - b, a.y - b)
*(a::Point, b::Number) = Point(a.x * b, a.y * b)
/(a::Point, b::Number) = Point(a.x / b, a.y / b)
+(a::Number, b::Point) = Point(a + b.x, a + b.y)
-(a::Number, b::Point) = Point(a - b.x, a - b.y)
*(a::Number, b::Point) = Point(a * b.x, a * b.y)
/(a::Number, b::Point) = Point(a / b.x, a / b.y)
^(a::Point, b::Number) = Point(a.x^b, a.y^b)

p1, p2 = Point(3, 5), Point(2, -6)
println((p1 - p2 * p1 + 5p2)^2)
