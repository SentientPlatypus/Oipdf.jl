# Oipd.jl

[![Build Status](https://github.com/SentientPlatypus/Oipd.jl/actions/workflows/CI.yml/badge.svg?branch=main)](https://github.com/SentientPlatypus/Oipd.jl/actions/workflows/CI.yml?query=branch%3Amain)
[![License](https://img.shields.io/badge/License-MIT-blue.svg)](https://opensource.org/licenses/MIT)
[![Julia](https://img.shields.io/badge/Julia-1.10+-blue.svg)](https://julialang.org/)

A comprehensive Julia package for options pricing, volatility modeling, and risk-neutral probability analysis.

## Features

- **Real-time Options Data**: Fetch live options chains from Yahoo Finance
- **Black-Scholes Pricing**: Complete implementation with implied volatility calculation
- **SVI Model**: Stochastic Volatility Inspired model for volatility smile fitting
- **Risk-Neutral Probabilities**: Calculate probabilities of price movements using risk-neutral density
- **Breeden-Litzenberger**: Numerical density estimation from option prices
- **Visualization**: Built-in plotting functions for analysis and debugging
- **Arbitrage Detection**: Automatic checking for model consistency and arbitrage opportunities

## Quick Start

```julia
using Oipd

# Calculate probability that AMD will be below $200 at expiration
prob = prob_below("AMD", 200.0, "2025-01-17")

# Calculate probability that AMD will be at or above $250
prob_above = prob_at_or_above("AMD", 250.0, "2025-01-17")

# Get closest available expiration date
expiry = get_closest_expiry("AMD")
```

## Installation

```julia
using Pkg
Pkg.add("https://github.com/SentientPlatypus/Oipd.jl")
```

## Documentation

- **[Technical Documentation](TECHNICAL_README.md)**: Detailed mathematical background, algorithms, and API reference
- **[Examples](examples/)**: Practical usage examples and scripts
- **API Reference**: Comprehensive function documentation in source code

## Core Functionality

### Options Data
- Fetch real-time call and put options data
- Automatic data cleaning and quote health checking
- Support for any ticker with options available on Yahoo Finance

### Pricing Models
- **Black-Scholes**: European option pricing with Newton-Raphson implied volatility
- **SVI**: Parametric volatility smile modeling
- **Risk-Neutral Density**: Extract probability distributions from option prices

### Probability Analysis
- Calculate risk-neutral probabilities for price movements
- Support for custom strike prices and expiration dates
- Automatic volatility surface construction

### Visualization
- Volatility smile plots
- Price vs strike analysis
- Risk-neutral density plots
- SVI model fit diagnostics

## Example Usage

```julia
using Oipd

# Analyze AMD options expiring in January 2025
ticker = "AMD"
expiry = "2025-01-17"
strike = 220.0

# Calculate probabilities
prob_below_strike = prob_below(ticker, strike, expiry)
prob_above_strike = prob_at_or_above(ticker, strike, expiry)

println("Probability AMD < $strike at expiry: $(round(prob_below_strike * 100, digits=2))%")
println("Probability AMD ≥ $strike at expiry: $(round(prob_above_strike * 100, digits=2))%")

# Generate analysis plots
prob_below(ticker, strike, expiry, "./plots")
```

## Dependencies

- **DataFrames.jl**: Data manipulation
- **Plots.jl**: Visualization
- **Optim.jl**: Numerical optimization
- **Distributions.jl**: Statistical distributions
- **PythonCall.jl**: Yahoo Finance data fetching via yfinance

## Applications

- **Risk Management**: Assess probability of adverse price movements
- **Portfolio Optimization**: Incorporate option-implied probabilities
- **Trading Strategies**: Volatility arbitrage and directional bets
- **Research**: Empirical analysis of risk-neutral distributions
- **Education**: Learn options pricing and volatility modeling

## Contributing

Contributions are welcome! Please feel free to submit issues, feature requests, or pull requests.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## Citation

If you use Oipd.jl in your research, please cite:

```bibtex
@software{wicksono2025oipd,
  author = {Gene Wicaksono},
  title = {Oipd.jl: Options Pricing and Risk Analysis in Julia},
  url = {https://github.com/SentientPlatypus/Oipd.jl},
  year = {2025}
}
```

## Acknowledgments

- Yahoo Finance for options data
- The Julia community for excellent packages
- Financial mathematics literature on SVI and risk-neutral pricing


