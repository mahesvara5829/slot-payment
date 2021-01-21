class OnepaymentsController < ApplicationController

def index
  @onepayments=Onepayment.includes(:user).order("id DESC")
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
  @onepayment=Onepayment.find(params[:id])
  if current_user.id==@onepayment.user_id
    @onepayment.destroy
    redirect_to action: :index
  end
end

def edit
  @onepayment=Onepayment.find(params[:id])
  unless current_user.id==@onepayment.user_id
    redirect_to action: :index
  end
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
  @comment = Comment.new
  @comments = @onepayment.comments.includes(:user)
end



private
def onepayment_params
  params.require(:onepayment).permit(:month_id, :day_id, :store_id, :kisyu_id, :one_investment, :one_recovery, :one_balance_of_payment, :one_rationale).merge(user_id:current_user.id)
end


end
