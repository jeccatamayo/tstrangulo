Given(/^abro la aplicacion$/) do
  visit '/'
end

Then(/^debo ver un input que me permita ingresar una sola letra$/) do
  fill_in("letra", :with => "A")
end


Then(/^debo ver siete guiones bajos "([^"]*)" como espacios para cada letra$/) do |texto|
  expect(page.body).to match /#{texto}/m
end
