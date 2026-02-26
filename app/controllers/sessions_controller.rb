class SessionsController < ApplicationController
  def new
    # render login form in sessions/new.html.erb
  end

  def create
    # authenticate the user
    @user = User.find_by({"email" => params["email"]})
    # 1. try to find the user by their unique identifier
    if @user != nil
    # 2. if the user exists -> check if they know their password
    # users password == params["password"]
    # 3. if they know their password -> login is successful
        if @user["password"] == params["password"]
          flash["notice"] = "Welcome."
          redirect_to "/companies"
        else
          flash["notice"] = "Nope."
          redirect_to "/login"  
          
        end
    # 4. if the user doesn't exist or they don't know their password -> login fails
     # flash["notice"] = "Welcome."
     # redirect_to "/companies"
  
    else
      flash["notice"] = "Nope."
      redirect_to "/login"  
      
    end

  end

  def destroy
    # logout the user
    flash["notice"] = "Goodbye."
    redirect_to "/login"
  end
end
