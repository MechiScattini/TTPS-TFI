class UsersController < ApplicationController
  load_and_authorize_resource

  before_action :configure_permitted_parameters, if: :devise_controller?

  # GET /branches or /branches.json
  def index
    @users = User.all
  end

  def show
  end

  # GET /branches/new
  def new
    @user = User.new user_params
  end

  # GET /branches/1/edit
  def edit
    @user.update(user_params)
  end

  # POST /branches or /branches.json
  def create
    @user = User.new(user_params)

    respond_to do |format|
      if @user.save
        format.html { redirect_to user_url(@user), notice: "User was successfully created." }
        format.json { render :show, status: :created, location: @user }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /branches/1 or /branches/1.json
  def update
    respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to user_url(@user), notice: "User was successfully updated." }
        format.json { render :show, status: :ok, location: @user }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /branches/1 or /branches/1.json
  def destroy
    @user.destroy

    respond_to do |format|
      format.html { redirect_to users_url, notice: "User was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  def get_all_branches
    Branch.all
  end
  helper_method :get_all_branches

  def get_user_roles
    User.roles
  end
  helper_method :get_user_roles

  protected
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:role])
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def user_params
      params.fetch(:user, {}).permit(:email, :password, :password_confirmation, :role, :branch_id)
    end
end
