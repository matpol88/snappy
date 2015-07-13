class WeddingsController < ApplicationController
  before_action :set_wedding, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @weddings = Wedding.all
    respond_with(@weddings)
  end

  def show
    respond_with(@wedding)
  end

  def new
    @wedding = Wedding.new
    respond_with(@wedding)
  end

  def edit
  end

  def create
    @wedding = Wedding.new(wedding_params)
    @wedding.save
    respond_with(@wedding)
  end

  def update
    @wedding.update(wedding_params)
    respond_with(@wedding)
  end

  def destroy
    @wedding.destroy
    respond_with(@wedding)
  end

  private
    def set_wedding
      @wedding = Wedding.find(params[:id])
    end

    def wedding_params
      params.require(:wedding).permit(:name, :date, :location, :guests, :user_id)
    end
end
