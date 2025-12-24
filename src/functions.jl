using YFinance


function greet_your_package_name()
    return "Hello Oipd!"
end


function price_to_IV(price::Float64)
    # Implement the logic to convert price to IV
    # ...
    return iv
end

function gaussian_smooth(data::Vector{Float64}, kernel_size::Int)
    # Implement the logic to perform Gaussian smoothing
    # ...
    return smoothed_data
end

function fit_spline(data::Vector{Float64}, degree::Int)
    # Implement the logic to fit a spline to the data
    # ...
    return spline
end


function Breeden_Litzenberger(data::Vector{Float64})
    # Implement the logic to calculate Breeden-Litzenberger formula
    # ...
    return result
end


export greet_your_package_name