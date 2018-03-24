class LoginOptionsScreen < BaseScreen
  def initialize
    @trait = 'login_option_view'
    verificar_se_estou_na_screen(@trait)
  end
end
