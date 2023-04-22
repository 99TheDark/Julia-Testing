using Random

function bogosort!(arr)
    while true
        shuffle!(arr)
        shuffled = true
        for i in 1:(length(arr) - 1)
            if arr[i] > arr[i + 1] 
                shuffled = false
                break
            end
        end
        if shuffled return end
    end
end

list = [3, 1, 4, 1, 5, 9, 2, 6, 5, 3, 5]
bogosort!(list)

print(list)