Given /^I am viewing the landing page$/ do
  visit '/'
end

When /^I fill out the form$/ do
  fill_in 'Email', with: 'chris@cdmwebs.com'
  fill_in 'Name', with: 'Chris Moore'
  fill_in 'Comments', with: 'This is a comment. It might be a question, though.'
  click_button 'Send it!'
end

Then /^I should be notified that the contact has been sent$/ do
  page.current_path.should == '/'
  page.should have_content("Got it!")
end

Then /^Gaslight should recieve my email$/ do
  pending
  #page.should have_content('instructions for changing your password')
  #user = User.find_by_email!(email)
  #assert !user.confirmation_token.blank?
  #assert !ActionMailer::Base.deliveries.empty?

  #result = ActionMailer::Base.deliveries.any? do |email|
  #  email.to == [user.email] &&
  #    email.subject =~ /password/i &&
  #    email.body =~ /#{user.confirmation_token}/
  #end

  #assert result
end

