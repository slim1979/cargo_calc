class FillWithData < ActiveRecord::Migration[5.1]
  Zone.create(number: 1, cost: 10)
  Zone.create(number: 2, cost: 20)
  City.create(title: 'Москва', zone: Zone.first)
  City.create(title: 'Санкт-Петербург', zone: Zone.first)
  City.create(title: 'Алматы', zone: Zone.last)
end
