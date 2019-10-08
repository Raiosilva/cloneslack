class InviteTeamsController < ApplicationController
  before_action :invite_params, only: [:create]
  before_action :set_invite, only: [:show, :update, :delete]
  before_action :authenticate_user!, except: [:show]

  def show
    if !current_user && @invite.accepted == false
      cookies[:token] = {
        value: params=:id
      }
    end
  end

  def create
    invite = Invite.find_by(email: @email)
    invite.destroy
    if !@team || @user && @team.users.where(id: @user.id).present?
      respond_to do |format|
        format.json { render json: false}
      end
    else
      invite = Invite.create(email: @email, team: @team)
      SendMailJob.new(invite).perform
      respond_to do |format|
        format.json { render json: true }
      end
    end
  end

  def update
    @invite.visualized = true
    @invite.accept = true

    respond_to do |format|
      if @invite.save
        TeamUser.create(user_id: current_user.id, team_id:@invite.team.id)
        format.html { redirect_to "/#{@invite.team.slug}" }
      else
        format.html { redirect_to main_app.root_url, notice: @invite.errors }
      end
    end
  end


  private

  def invite_params
    param.require(:team_user).parmite(:team_id, :email)

    @user = User.find_by(email: params[:team_user][:email])
    @email = params[:team_user][:email]
    @team = Team.find(params[:team_user][:team_id])
  end

  def set_invite
    @invite = Invite.find_by(token: params[:id])
  end
end
