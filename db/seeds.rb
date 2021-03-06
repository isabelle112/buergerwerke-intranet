# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Admin.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?

Cooperative.create!(email: 'info@heg.de', city: 'Eppelheim', name: 'Heidelberger Energiegenossenschaft', latitude: 49.4075, longitude: 8.6447, website: 'https://hd-eeg.de', coopnumber: 'M001') if Rails.env.development?
Member.create!(firstname: 'Maurice', lastname: 'Frank', email: 'maurice.frank@posteo.de', cooperative_id: 1, is_coop_admin: true, is_board_member: true, password: 'password', password_confirmation: 'password') if Rails.env.development?
Member.create!(firstname: 'Donald', lastname: 'Duck', email: 'd.duck@entenhausen.de', cooperative_id: 1, password: 'password') if Rails.env.development?
Member.create!(firstname: 'Gustav', lastname: 'Gans', email: 'g.gans@entenhausen.de', cooperative_id: 1, is_board_member: true, password: 'password') if Rails.env.development?
Plant.create!(name: 'Uni Solar', cooperative_id: 1, plant_type: 'solar', peak_power: 46.55, latitude: 49.4170, longitude: 8.6696)
Plant.create!(name: 'Neckar Staudamm', cooperative_id: 1, plant_type: 'wasser', peak_power: 400.00, latitude: 49.4143, longitude: 8.7093)

Cooperative.create!(email: 'info@eeg.de', city: 'Entenhausen', name: 'Entenhausener Energiegenossenschaft', latitude: 53.28407, longitude: 9.75958, website: 'https://entenhausen.com', coopnumber: 'P001') if Rails.env.development?
Member.create!(firstname: 'Dagobert', lastname: 'Duck', email: 'dagobert@entenhausen.de', cooperative_id: 2, is_board_member: true, password: 'password') if Rails.env.development?
Member.create!(firstname: 'Daniel', lastname: 'Düsentrieb', email: 'd.duesentrieb@entenhausen.de', cooperative_id: 2, is_board_member: true, password: 'password') if Rails.env.development?
Plant.create!(name: 'Dagoberts Solarpark', cooperative_id: 2, plant_type: 'solar', peak_power: 22.22, latitude: 53.2824, longitude: 9.7680)
Plant.create!(name: 'Dagoberts Windpark', cooperative_id: 2, plant_type: 'wind', peak_power: 200, latitude: 53.2868, longitude: 9.7591)

FileCategory.create!(name: 'Design Dateien') if Rails.env.development?
FileCategory.create!(name: 'Texte') if Rails.env.development?
