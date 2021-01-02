class ApplicationController < ActionController::Base
  before_action :authenticate_user! #アクションが実行される前に実行 未ログインユーザをログインページへ切り替える
  before_action :configure_permitted_parameters, if: :devise_controller?  #deviseにてストロングパラメータを使用する際の記述




  private
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])  #サインアップ時にnameカラムに値を登録することを許可する。
  end

end
