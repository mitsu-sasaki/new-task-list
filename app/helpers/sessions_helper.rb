module SessionsHelper
  def current_user
    @current_user ||= User.find_by(id: session[:user_id])

#    if @current_user.blank?
#      @current_user = User.find_by(id:session[:user_id]) #userを探して@current_userにセットとする
#    end
#    @current_user

#    if  # crerrnt_userに中身がある場合
#      @current_user #何もしないのでそのまま返す
#    else　　　#中身がなかった場合
#      @current_user = User.find_by(id:session[:user_id]) #userを探して@current_userにセットとする
#    end
#    return @current_user
  end

  def logged_in?
    !!current_user
  end
end