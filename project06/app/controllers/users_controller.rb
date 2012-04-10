class UsersController < ApplicationController
  filter_resource_access
  def new
    
  end

  def create
    
    if verify_recaptcha() && @user.save
      redirect_to root_url, :notice => "Successfully created user."
    else
      render :action => 'new'
    end
  end

  def edit
    
  end

  def update
    
    if @user.update_attributes(params[:user])
      redirect_to root_url, :notice  => "Successfully updated user."
    else
      render :action => 'edit'
    end
  end
end
