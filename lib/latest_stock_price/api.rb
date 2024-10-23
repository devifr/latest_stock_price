require 'httparty'
require "json"

module LatestStockPrice
  class Api
    include HTTParty
    base_uri 'https://latest-stock-price.p.rapidapi.com'

    def initialize(api_key=nil)
      @headers = {
        "X-RapidAPI-Host" => "latest-stock-price.p.rapidapi.com",
        "X-RapidAPI-Key" => api_key
      }
    end

    def price(symbol)
      response = self.class.get("/equities-enhanced", query: { Symbols: symbol }, headers: @headers)
      data = JSON.parse(response.body)
      data[0]["LTP"].to_f
    end

    def prices(symbols)
      response = self.class.get("/equities-enhanced", query: { Symbols: symbols }, headers: @headers)
      data = JSON.parse(response.body)
      data.map { |d| d["LTP"].to_f }.sum
    end

    def price_all
      response = self.class.get("/equities", headers: @headers)
      data = JSON.parse(response.body)
      data.map { |d| d["LTP"].to_f }.sum
    end
  end
end
