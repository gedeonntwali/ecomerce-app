class Product < ApplicationRecord

  def tax
    tax = price.to_i * 0.09
  end

  def total_price
    total_price = tax + price.to_i
  end


end
