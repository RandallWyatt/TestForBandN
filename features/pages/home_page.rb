require_relative 'base_page'

class HomePage < BasePage
  include PageObject
  text_field(:search_box, id:'searchBarBN')
  button(:search_button, id:'searchSubmit')

  page_url BASE_URL

  def search_for_books
    self.search_box = 'A Perfect Union of Contrary Things'
    search_button
  end

end