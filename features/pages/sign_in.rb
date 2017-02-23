require_relative 'base_page'

class SignIn < BasePage
  include PageObject

  link(:sign_in, class:'sign-in-link')

  in_iframe(src:/account\/login-frame\.jsp/) do |frame|
    text_field(:email, id:'email', frame:frame)
    text_field(:password, id:'password', frame:frame)
    button(:submit_credentials, type:'submit', frame:frame)
  end


  def sign_in_action
    sign_in
  end

  def credentials
    self.email = 'wyatt845@gmail.com'
    self.password = 'Kaexplode1!'
    submit_credentials
  end
end