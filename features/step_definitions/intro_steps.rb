Dado("que estou/estive na tela de Intro") do
  @page = IntroScreen.new
end

Quando("tocar/toquei no botao iniciar") do
  @page.tocar_no_botao_iniciar
end

Entao("devo ver a tela de Login Options") do
  LoginOptionsScreen.new
end
