Given /^I am viewing the contact page$/ do
  visit '/contact'
end

When /^I submit the empty form$/ do
  fill_in 'Name', with: ''
  fill_in 'Email', with: ''
  fill_in 'Can you tell us a little bit about your business and project?', with: ''

  # click_button 'Send it!'
  page.execute_script("document.forms[0].submit();")
end

When /^I fill out the form$/ do
  fill_in 'Name', with: 'Chris Moore'
  fill_in 'Email', with: 'chris@cdmwebs.com'
  fill_in 'Can you tell us a little bit about your business and project?', with: 'This is a comment. It might be a question, though.'
  fill_in 'Are you a human? Just say yes if so.', with: 'Yeah'

  click_button 'Send it!'
end

Then /^I should be notified that the contact has not been sent$/ do
  page.should have_content("can't be blank")
end

Then /^I should be notified that the contact has been sent$/ do
  page.current_path.should == '/contact'
  page.should have_content("got it!")
end

Then /^Gaslight should receive my email$/ do
  ActionMailer::Base.deliveries.should_not be_empty

  result = ActionMailer::Base.deliveries.select do |email|
    email.subject =~ /Contact/i && email.body =~ /might be a question/
  end

  result.should have(1).item
end

