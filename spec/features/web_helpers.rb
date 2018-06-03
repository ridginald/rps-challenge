def sign_in_and_play
  visit('/')
  fill_in :player_name, with: 'Dan'
  click_button 'Submit'
  expect(page).to have_content 'Dan'
end

def cpu_options
  [:rock, :paper, :scissors].map { |choice| "CPU selected #{cpu_options}"}
end