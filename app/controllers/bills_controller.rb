class BillsController < ApplicationController
  
  def index
    @bills = Bill.all
  end

  def show
     @bill = Bill.find(params[:id])
  end

  def new
    @bill = Bill.new
  end

  def create
    @bill = Bill.new(bill_params)
    if @bill.save
      redirect_to root_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @bill = Bill.find(params[:id])
  end

  def update
    @bill = Bill.find(params[:id])
    if @bill.update(bill_params)
      redirect_to root_path
    else
      render :edit, status: :unprocessable_entity
    end
  end
  
  def destroy
    @bill = Bill.find(params[:id])
    @bill.destroy
    redirect_to root_path 
  end
  
  private
  def bill_params
    params.require(:bill).permit(:name, :price, :month_id)
  end
end
