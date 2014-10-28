Given(/^I'm on the (.*) creation page$/) do |thing|
  visit eval("new_#{thing}_path")
end

When(/^I add a new album$/) do
  fill_in 'Name', :with => "Lullaby"
  fill_in 'Price', :with => "11.66"
  click_button 'Create Album'
end

Then(/^I should see the newly created (.*)$/) do |thing|
  assert page.has_content?("#{thing.capitalize} was successfully created")
end

When(/^I add a new album with no price$/) do
  fill_in 'Name', :with => "Lullaby"
  click_button 'Create Album'
end

Then(/^I should see errors on the page$/) do
  assert page.has_css?('div.field_with_errors')
end

When(/^I add a new playlist$/) do
  fill_in 'Title', :with => "Awesome Playlist"
  click_button 'Create Playlist'
end