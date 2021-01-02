class UsersController < ApplicationController

  def edit  #editビューファイルへ
  end

  def update
    if current_user.update(user_params) #カレントユーザの情報更新成功→ルートパスへ
      redirect_to root_path
    else
      render :edit  #失敗→editページへ
    end
  end



  private

  def user_params
    params.require(:user).permit(:name, :email) #入力フォームから送られてきたname emailカラムのみ受け付ける
  end

end
