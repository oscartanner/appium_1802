Dado("naveguei ate a tela de Sign UP") do
  steps(%"
E que estive na tela de Intro
E toquei no botao iniciar
E que estou na tela de Login Options
E tocar no botao sign up
")
end

Dado("que estou na tela Sign UP") do
  $driver.wait_true(5) { $driver.exists { $driver.find_element(:id, 'activity_sign_up') } }
end

Quando("inserir {string} no campo de nome completo") do |nome|
  fullname = $driver.find_element(:id, 'fullname')
  fullname.send_keys(nome)
  $driver.back
end
