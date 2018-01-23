class CalcsController < ApplicationController

  respond_to :html, only: :index

  def index
    respond_with(@calcs = Calc.all)
  end

  def create
    @calc = Calc.create(calc_params)
    render json: { calc: @calc, from: @calc.delivery_from.title, _to: @calc.delivery_to.title }
  end

  private

  def calc_params
    params.require(:calc).permit(:delivery_from_id, :delivery_to_id, :cargo_width, :cargo_height, :cargo_depth)
  end
end
