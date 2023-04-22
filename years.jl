module Years 

    export leapyears

    leapyears = function(year)
        year % 100 == 0 ? year % 400 == 0 : year % 4 == 0
    end

end