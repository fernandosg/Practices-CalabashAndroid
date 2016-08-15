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

Then /^I scroll down until I see the "([^"]*)" text$/ do |text|
  q = query("android.widget.TextView text:'#{text}'")
  while q.empty?
    scroll_down
    q=query("android.widget.TextView text:'#{text}'")
  end
  touch(q)
  sleep(1)
  screenshot_embed({:name=>"clicked_item_in_listview"})
end

Then /^I click on spinner with id "([^"]*)"$/ do |id|
  touch("android.widget.Spinner id:'#{id}'")
  sleep(1)
  screenshot_embed({:name=>"clicked_spinner"})
end


Then /^I click the item with "([^"]*)" text$/ do |text|
  touch("android.widget.TextView marked:'#{text}'")
  sleep(1)
  screenshot_embed({:name=>"clicked_item_spinner"})
end
