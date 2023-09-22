module ProductsHelper
    def category_options
      categories = Category.order(name: :asc).pluck(:name, :id)
      new_category_option = ['Create New Category', 'new_category']
  
      categories << new_category_option
    end
  end
  