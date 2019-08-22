
feature 'input names' do
    scenario 'submits names' do
        visit('/names')
        sign_in_and_play
        expect(page).to have_content "Jeff vs. Marvin"
    end
end