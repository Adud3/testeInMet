given('I need to Login') do
  visit 'https://inm-test-app.herokuapp.com'
end

When('trying to login using {string} with password {string}') do |user, password|
  login = Page.new
  login.loginUser(user, password)

end

Then('it should have message {string}') do |message|
    expect(page).to have_content message
end
