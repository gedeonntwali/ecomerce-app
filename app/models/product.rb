class Product < ApplicationRecord
   
  has_many :images
  belongs_to :supplier, optional: true

  has_many :carted_products
  has_many :orders, through: :carted_products

  has_many :category_products
  has_many :categories, through: :category_products

  validates :name, presence: true
  validates :price, numericality: {greater_than: 0}
  


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
