Given('the need to register a user') do
  visit 'https://inm-test-app.herokuapp.com/accounts/signup/'
end

When('trying to register {string} with password {string}') do |user, password|
     register = Page.new
     register.newUser(user, password)
end

Then('it should give message {string}') do |mensagem|
  @URL = driver.current_url

  if @URL.eql? 'https://inm-test-app.herokuapp.com/accounts/login/' Then
    mensagem = 'Redirected'
  end

  expect(mensagem).to eq 'Redirected'
end
