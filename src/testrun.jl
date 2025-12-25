# include("../src/data.jl")
# include("../src/functions.jl")





# println("this is running testrun.jl")


# ticker = "AMD"
# expiry = get_closest_expiry(ticker)

# println("ticker: $(ticker) expiry: $(expiry)")

# call_df, put_df = get_option_prices(ticker, expiry)
# spot = get_spot_price(ticker)
# rate = 0.01

# paritized = paritize(spot, call_df, put_df, expiry, rate)

# println(paritized)

# using Plots
# plot(
#     paritized.strike,
#     paritized.price,
#     seriestype = :scatter,
#     marker = :circle,
#     xlabel = "Strike",
#     ylabel = "Price",
#     title = "Paritized Option Prices",
#     legend = false
# )

# savefig("$(ticker)_paritized_plot.png")