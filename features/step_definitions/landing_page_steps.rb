Given /^I am viewing the landing page$/ do
  visit '/'
end

When /^I fill out the form$/ do
  fill_in 'message_email', with: 'chris@cdmwebs.com'
  fill_in 'message_name', with: 'Chris Moore'
  fill_in 'message_body', with: 'This is a comment. It might be a question, though.'
  click_button 'Send it!'
end

Then /^I should be notified that the contact has been sent$/ do
  page.current_path.should == '/'
  page.should have_content("got it!")
end

Then /^Gaslight should receive my email$/ do
  ActionMailer::Base.deliveries.should_not be_empty

  result = ActionMailer::Base.deliveries.select do |email|
    email.subject =~ /Contact/i && email.body =~ /might be a question/
  end

  result.size.should == 1
end

