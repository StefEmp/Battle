
def sign_in_and_play
    visit('/names')
    fill_in :player_1_name, with: "Jeff"
    fill_in :player_2_name, with: "Marvin"
    click_button "Time to fight!"
end