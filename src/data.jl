using PythonCall
using DataFrames

yf = pyimport("yfinance")
pd = pyimport("pandas")

function get_option_prices(ticker::String, expiry_date::String)
    "Returns OTM call and put prices for a given ticker and expiry date"

    stock = yf.Ticker(ticker)

    @assert length(stock.options) > 0 "No options data is found for the given ticker: $(ticker). Check that the ticker is correct."
    @assert expiry_date in stock.options "Expiry date: $(expiry_date) not found for the given ticker: $(ticker)"

    opt_chain = stock.option_chain(expiry_date)

    call_df = DataFrame(PyTable(opt_chain.calls))
    put_df = DataFrame(PyTable(opt_chain.puts))

    calls_otm = filter(:inTheMoney => ==(false), call_df)
    puts_otm  = filter(:inTheMoney => ==(false), put_df)

    call_price_vs_strike = calls_otm[:, ["strike", "lastPrice"]]
    put_price_vs_strike = puts_otm[:, ["strike", "lastPrice"]]

    return call_price_vs_strike, put_price_vs_strike
end


export get_option_prices


