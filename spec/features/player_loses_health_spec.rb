feature 'Test player 1 loses health' do
    scenario 'Test player 1 loses health' do
    visit('/play')
    expect(page).to have_content("Player 2 Health = 50")
    end
end
feature 'Test player 2 loses health' do
    scenario 'Test player 2 loses health' do
    visit('/play')
    expect(page).to have_content("Player 2 Health = 50")
    end