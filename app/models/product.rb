class Product < ApplicationRecord
   
   belongs_to :supplier

   has_many :images


  def tax
    tax = price.to_i * 0.09
  end

  def total_price
    total_price = tax + price.to_i
  end

  def self.search(search)
    if search
      find(:all, :conditions => ['name LIKE ?', "%#{search}%"])
    else
      find(:all)
    end
  end


end
