class SessionsController < ApplicationController
  def callback
 
    #omniauth.auth環境変数を取得
    auth = request.env["omniauth.auth"]
 
    #Userモデルを検索
    user = User.find_by_provider_and_uid(auth["provider"], auth["uid"])
    if user
       # 既存のユーザ情報があった場合　ルートに遷移させます
       session[:user_id] = user.id
       redirect_to controller: "menters", action: "index", notice: "rogin"
    else
       # Userモデルに:providerと:uidが無い場合（外部認証していない）、保存してからルートへ遷移させる
       User.create_with_omniauth(auth)
       redirect_to controller: "menters", action: "index", notice: "regist"
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to controller: "menters", action: "index", notice: "Log out"
	end

end
