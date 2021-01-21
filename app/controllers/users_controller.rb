class UsersController < ApplicationController

  def show
    user=User.find(params[:id])
    @onepayments = user.onepayments.order("id DESC")
    @data = [['2019-06-01', 100], ['2019-06-02', 500], ['2019-06-03', 150]]
  end

end
