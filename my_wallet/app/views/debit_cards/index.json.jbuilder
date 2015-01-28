json.array!(@debit_cards) do |debit_card|
  json.extract! debit_card, :id, :transaction_number, :deposits, :withdraws, :balance
  json.url debit_card_url(debit_card, format: :json)
end
