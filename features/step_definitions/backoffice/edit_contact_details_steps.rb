Given(/^a policy$/) do
  @policy = create(:policy)
end

And(/^the policy has contact details history$/) do
  expect(@policy.contact_details_history).not_to be_blank
end

When(/^I visit the edit contact details page$/) do
  @app.edit_contact_details_page.load
end

Then(/^I can see the contact details history table with the history changes$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

Then(/^I can see an empty contact details history table$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

When(/^I update the contact details first name as "([^"]*)"$/) do |arg1|
  pending # Write code here that turns the phrase above into concrete actions
end

Then(/^I can see the contact details history with the history changes$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

And(/^the contact details is updated with the first name as "([^"]*)"$/) do |arg1|
  pending # Write code here that turns the phrase above into concrete actions
end

Given(/^a "([^"]*)" "([^"]*)" policy$/) do |arg1, arg2|
  pending # Write code here that turns the phrase above into concrete actions
end

And(/^the consultant accesses the journey URL$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

When(/^I provide incomplete details$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

Then(/^I get an error message$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

And(/^contact details are not updated$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

And(/^I am unauthorized user$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

When(/^I try to update the contact details$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

Then(/^an error is thrown$/) do
  pending # Write code here that turns the phrase above into concrete actions
end


