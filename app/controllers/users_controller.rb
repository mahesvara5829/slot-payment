class UsersController < ApplicationController

  def show
    user=User.find(params[:id])
    @onepayments = user.onepayments.order("id DESC")
    @sum=0
    @onepayments.each do |onepayment|
      @sum=@sum+onepayment.one_balance_of_payment.to_i
    end

  end

end
