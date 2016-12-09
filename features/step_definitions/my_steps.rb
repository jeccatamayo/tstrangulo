Given(/^abro la aplicacion$/) do
  visit '/'
end

Then(/^debo ver un input que me permita ingresar una sola letra$/) do
  fill_in("letra", :with => "A")
end

Then(/^debo ver siete guiones bajos "([^"]*)" como espacios para cada letra$/) do |texto|
  expect(page.body).to match /#{texto}/m
end

Then(/^debo ver nueve guiones bajos "([^"]*)" como espacios para cada letra$/) do |texto|
  expect(page.body).to match /#{texto}/m
end

Given(/^hago clic en el boton Validar$/) do
  click_button("validar")
end

Then(/^debo invocar al controlador validar$/) do
  visit '/validar'
end

Given(/^ingreso la letra "([^"]*)"$/) do |letra|
  fill_in("letra", :with => letra)
end

Then(/^debo ver que la letra "([^"]*)", se muestre como parte de la palabra$/) do |texto|
  expect(page.body).to match /#{texto}/m
end

Then(/^debo ver el texto "([^"]*)"$/) do |texto|
  expect(page.body).to match /#{texto}/m
end

Then(/^debo ver "([^"]*)"$/) do |texto|
  expect(page.body).to match /#{texto}/m
end