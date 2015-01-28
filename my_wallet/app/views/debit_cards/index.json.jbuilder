json.array!(@debit_cards) do |debit_card|
  json.extract! debit_card, :id, :deposits, :withdraws
  json.url debit_card_url(debit_card, format: :json)
end
