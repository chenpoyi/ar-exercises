class Store < ActiveRecord::Base
  has_many :employees
  validates :name, length:{minimum: 3}
  validates :annual_revenue, numericality: {
    greater_than_or_equal_to: 0,
  }
  validate :men_or_women

  def men_or_women
   
    if mens_apparel != true && womens_apparel != true
      errors.add(:mens_apparel, "Must carry either mens or womens apparel")
      errors.add(:womens_apparel, "Must carry either mens or womens apparel")
    end

  end
end
