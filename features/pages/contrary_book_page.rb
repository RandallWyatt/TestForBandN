require_relative 'base_page'

class ContraryBookPage < BasePage
  include PageObject

  button(:add_to_bag, value:'Add to Bag')


  def get_book
    add_to_bag
  end

end