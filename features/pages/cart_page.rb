require_relative 'base_page'

class CartPage < BasePage

  page_url BASE_URL+'/checkout/'

  link(:remove_item, text:'Remove')

  def remove_book
    remove_item
  end

end