feature 'Testing player1 hit points' do
  scenario 'Can show player 1s hit points' do
  visit('/play')
  expect(page).to have_content("Player 1 Health = 50")
  end
end
feature 'Testing player1 hit points' do
  scenario 'Can show player 2s hit points' do
  visit('/play')
  expect(page).to have_content("Player 2 Health = 50")
  end
end