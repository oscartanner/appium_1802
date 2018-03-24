class IntroScreen < BaseScreen
  def initialize
    @trait = 'intro_view'
    @botao_iniciar = 'start_button'
    verificar_se_estou_na_screen(@trait)
  end

  def tocar_no_botao_iniciar
    tocar_botao(@botao_iniciar)
  end
end
