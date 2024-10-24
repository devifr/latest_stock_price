# MyStockPriceLib

A simple library to fetch the latest stock prices from the Latest Stock Price API.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'latest_stock_price', git: 'https://github.com/devifr/latest_stock_price.git'
```
Then Execute
```ruby
bundle install
```

## Usage
require 'my_stock_price_lib'

api_key = "YOUR_RAPIDAPI_KEY"

stock_price = LatestStockPrice::Api.new(api_key)

puts stock_price.price_all
