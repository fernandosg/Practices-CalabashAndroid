require 'calabash-android/calabash_steps'
Given /^I am on Main Activity Screen$/ do
end
Then /^I enter "([^"]*)" in the "([^"]*)" field$/ do |text,field|
  touch("android.widget.EditText id:'#{field}'")
  keyboard_enter_text text
end

Then /^I press button with id "([^"]*)"$/ do |id|
  sleep(1)
  screenshot_embed({:name=>"main_activity"})
  touch("android.widget.Button id:'#{id}'")
  sleep(1)
  screenshot_embed({:name=>"list_activity"})
end
