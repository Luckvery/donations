include ApplicationHelper

def valid_signin(user)
  fill_in "Email",    with: user.email.upcase
  fill_in "Password", with: user.password
  click_button "Sign in"
end

RSpec::Matchers.define :have_error_message do |m|
  match do |page|
    page.has_selector?('div.alert.alert-error', text: m)
  end
end
