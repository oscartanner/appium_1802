Dado("que estou/estive na tela de Login Options") do
  wait_true(5) { exists { find_element(:id, 'activity_login_option') } }
end

Quando("tocar/toquei no botao sign up") do
  sign_up = find_element(:id, 'sign_up')
  sign_up.click
end

Quando("tocar/toquei no botao sign in") do
  button = find_element(:id, 'sign_in')
  button.click
end

Entao("devo ver a tela de Sign UP") do
  wait_true(5) { exists { find_element(:id, 'activity_sign_up') } }
end

Entao("devo ver a tela de Sign In") do
  wait_true(5) { exists { find_element(:id, 'activity_login') } }
end
