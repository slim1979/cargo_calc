require 'rails_helper'

feature 'New calculation create', %q{
  in order to get delivery cost
  as an visitor
  i want to be able to calculate delivery
} do

  given(:zone_1) { create(:zone) }
  given(:zone_2) { create(:zone) }
  given!(:from_city) { create(:city, zone: zone_1) }
  given!(:to_city) { create(:city, zone: zone_2) }

  before { visit root_path }

  scenario 'visitor can visit calculation page' do
  end

  scenario 'visitor can see calculator' do
    expect(page).to have_css '.new_calc'
  end

  scenario 'form will hide after calculate', js: true do

    select from_city.title, from: 'calc[delivery_from_id]'
    select to_city.title,   from: 'calc[delivery_to_id]'
    fill_in 'Cargo width', with: 10
    fill_in 'Cargo height', with: 20
    fill_in 'Cargo depth', with: 30
    click_on 'Рассчитать'
    expect(page).to_not have_css '.new_calc'
  end

  scenario 'visitor will see message after calculation', js: true do

    select from_city.title, from: 'calc[delivery_from_id]'
    select to_city.title,   from: 'calc[delivery_to_id]'
    fill_in 'Cargo width', with: 10
    fill_in 'Cargo height', with: 20
    fill_in 'Cargo depth', with: 30
    click_on 'Рассчитать'

    from_city_cost = from_city.zone.cost
    to_city_cost = to_city.zone.cost
    max_value = [from_city_cost, to_city_cost].max
    value_weight = 10*20*30/5000
    cost = max_value * value_weight
    wait_for_ajax
    within '.departure' do
      expect(page).to have_content "Отправление: #{from_city.title} - #{to_city.title}, #{value_weight} кг, 10 х 20 х 30"
    end
    within '.cost' do
      expect(page).to have_content "Стоимость: $#{cost}"
    end
  end
end
