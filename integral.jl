function integral(func::Function, start, stop, increment = 0.00001)
    ran = [val * increment for val in range(start, floor(stop / increment))]

    sum = 0
    for i in ran
        # Make sure the rectangle is always below the curve
        sum += increment * min(func(i), func(i + increment))
    end
    return sum
end

# Some input function f(x)
f = x -> ℯ^-x

println(integral(f, 0, 1000))
