class Post < ApplicationRecord
  has_many :post_categories
  has_many :categories, :through => :post_categories

  def category_names
    categories.collect{|c| c.name}
  end

  def category_names=(names)
    names.each do |name|
      self.post_categories.build(:category => Category.find_or_create_by(:name => name))
    end
  end
end
