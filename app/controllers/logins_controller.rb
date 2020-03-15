class LoginsController < ApplicationController

    def show
        @user = User.new
        render 'login/index'  
    end

    def create
        if params[:userId] =="" || params[:password]=="" 
            redirect_to login_path, alert: 'ID・パスワードは入力必須です' and return
        else
            ＠user = User.find_by(userId: params[:userId])
            if ＠user.userId != "" &&  params[:password] == ＠user.password
                session[:user_id] = user.userId
                redirect_to login_path and return
            else
                render "top/index", alert: 'IDもしくはパスワードが違います' and return
            end
        end
    end
    
end
