Given(/^I'm on the album creation page$/) do
  visit new_album_path
end

When(/^I add a new album$/) do
  fill_in 'Name', :with => "Lullaby"
  fill_in 'Price', :with => "11.66"
  click_button 'Create Album'
end

Then(/^I should see the newly created album$/) do
  assert page.has_content?("Album was successfully created")
end