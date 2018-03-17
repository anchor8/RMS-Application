json.extract! order_line, :id, :item_number, :item_description, :item_quantity, :item_price, :item_total_cost, :tax_rate, :tax_amount, :created_at, :updated_at
json.url order_line_url(order_line, format: :json)
