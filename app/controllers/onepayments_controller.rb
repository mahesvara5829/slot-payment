class OnepaymentsController < ApplicationController

def index
  @onepayments=Onepayment.all.order("id DESC")
end

def new
  @onepayment=Onepayment.new
end

def create
  @onepayment=Onepayment.new(onepayment_params)
  if @onepayment.save
    redirect_to root_path
  else
    render :new
    @onepayment=Onepayment.new(onepayment_params)
  end
end

def destroy
  onepayment=Onepayment.find(params[:id])
  onepayment.destroy
  redirect_to root_path
end

def edit
  @onepayment=Onepayment.find(params[:id])
end

def update
  @onepayment=Onepayment.find(params[:id])
  if @onepayment.update(onepayment_params)
    redirect_to root_path
  else
    render :edit
    @onepayment=Onepayment.find(params[:id])
  end
end

def show
  @onepayment=Onepayment.find(params[:id])
end



private
def onepayment_params
  params.require(:onepayment).permit(:month_id, :day_id, :store_id, :kisyu_id, :one_investment, :one_recovery, :one_balance_of_payment, :one_rationale).merge(user_id:current_user.id)
end


end
