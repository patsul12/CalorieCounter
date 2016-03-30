require 'rails_helper'

describe 'the entry creation path' do
  let!(:test_food) { create :food }
  it 'allows a user to create an entry', js: true do
    10.times do
      create(:food)
    end
    user = create(:user)
    login_as(user)
    visit root_path
    fill_in 'search', with: test_food.name
    within "td#add-food-#{test_food.id}" do
      click_link('Add')
    end
    fill_in 'entry[amount]', with: '0.5'
    find("#entry-input-#{test_food.id}").native.send_keys(:return)
    expect(page).to have_content(test_food.name)
    expect(page).to have_content(test_food.calories * 0.5)
  end
end
