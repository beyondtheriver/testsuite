class UsersController < ApplicationController
   def index
      @users = User.all
      @user = current_user
   end

   def show
    @user = User.find(params[:id])
    @posts = @user.posts
    @current_user = User.find(session[:user_id])
   end

   def new
   #  create a new user
      @user = User.new
   end

   def create
      puts 'creating a user!'

      @user = User.create(user_params)
      # @user = User.create(
      #    # fname: params[:user][:fname],
      #    # lname: params[:user][:lname],
      #    # email: params[:user][:email],
      #    # username: params[:user][:username],
      #    # password: params[:user][:password]
      #    # )

      session[:user_id] = @user.id

      flash[:notice] = "Created user!"

      redirect_to user_path @user
   end

  #  def update
  #   @user = User.find(params[:id])
  #   @user = current_user
  #   current_user.id == @user_id
  #     @user.update(user_params)
  #     redirect_to user_path @user
  #     flash[:notice] = "User update success!"
  # end


    def destroy
      @user = User.find(params[:id])
     # delete user from database
      @user.destroy
     # end session
      session[:user_id] = nil

     # redirect
      redirect_to '/'
    end

   private

   def user_params
    params.require(:user).permit(:fname, :lname, :username, :password, :email)
   end

end


