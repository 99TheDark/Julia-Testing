function integral(func::Function, start, stop, increment = 0.00001)
    ran = [val * increment for val in range(start, floor(stop / increment))]

    sum = 0
    for i in ran
        sum += increment * min(func(i), func(i + increment))
    end
    return sum
end

f = x -> ℯ^-x

println(integral(f, 0, 1000))