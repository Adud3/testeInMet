Given('I need to register a new employee') do
  click_link 'NOVO FUNCIONÁRIO'
end

When('I pass {string}, {string}, {string}, {string}, {string}, {string}, {string}') do |name, cpf, sex, admission, job, salary, isCLT|
    employee = Page.new
    employee.registerNewEmployee(name, cpf, sex, admission, job, salary, isCLT)
end

Then('page should show {string} message') do |status|
    expect(page).to have_content status
end
