# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

history = StockHistory.create(ticker: 'test_history')
StockDay.create(date: DateTime.new(2015, 6, 22), value: 5.0, stock_history: history)
StockDay.create(date: DateTime.new(2015, 6, 23), value: 4.0, stock_history: history)