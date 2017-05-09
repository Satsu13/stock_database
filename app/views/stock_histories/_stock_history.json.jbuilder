json.extract! stock_history, :id, :ticker, :created_at, :updated_at
json.url stock_history_url(stock_history, format: :json)
