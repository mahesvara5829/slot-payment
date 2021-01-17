class UsersController < ApplicationController

  def show
    user=User.find(params[:id])
    @onepayments = user.onepayments.order("id DESC")
  end

end
