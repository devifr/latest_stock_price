Gem::Specification.new do |spec|
  spec.name          = "latest_stock_price"
  spec.version       = LatestStockPrice::VERSION
  spec.authors       = ["Devi Firdaus Fauzi"]
  spec.summary       = "A simple Ruby code for the Get Latest Stock Price API"
  spec.files         = Dir["lib/**/*.rb"]
  spec.require_paths = ["lib"]
  spec.add_dependency "httparty"
end