class ApplicationController < ActionController::Base
  before_action :require_login, only: %i[new create edit update]

 private

 def require_login
   unless logged_in?
     flash[:error] = "ログインしてください"
     redirect_to new
   end
 end
end
