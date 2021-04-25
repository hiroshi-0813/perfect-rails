class RetirementsController < ApplicationController
  def new
    
  end
  
  def create
    if current_user.destory
      reset_session
      redirect_to root_path, notice: "退会完了しました"
    end
  end
  
end
