# Array of pretty random numbers
list = [7.4, -43.5, 18.7, 10.6, -5.9, 19.5];

# Option + W on Mac
function ∑(arr)
    sum = 0
    for i in arr
        sum += i
    end
    return sum
end

# Option + Shift + P on Mac
function ∏(arr)
    prod = 1
    for i in arr
        prod *= i
    end
    return prod
end

# Darn floating point errors

println(∑(list))
println(∏(list) / 10 ^ length(list))