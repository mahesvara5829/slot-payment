class OnepaymentsController < ApplicationController

def index
  @onepayments=Onepayment.all.order("id DESC")
end

def new
  @onepayment=Onepayment.new
end

def create
  onepayment=Onepayment.new(onepayment_params)
  if onepayment.save
    redirect_to root_path
  else
    render :new
  end
end


private
def onepayment_params
  params.require(:onepayment).permit(:month_id, :day_id, :store_id, :kisyu_id, :one_investment, :one_recovery, :one_balance_of_payment, :one_rationale)
end


end
