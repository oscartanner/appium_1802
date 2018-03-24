class IntroScreen < BaseScreen
  def initialize
    @trait = 'activity_intro'
    @botao_iniciar = 'start_app'
    
    verificar_se_estou_na_screen(@trait)
  end

  def tocar_no_botao_iniciar
    tocar_botao(@botao_iniciar)
  end
end
