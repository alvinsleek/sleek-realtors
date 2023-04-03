class RentalsController < ApplicationController
  def create
    rental = Rental.new(rental_params)
     
    if rental.save
      render json: { status: 'success', rental: rental}
    else
      render json: { status: 'error', errors: rental.errors.full_messages }
    end
  end

  private

  def rental_params
    params.require(:book).permit(:firstName, :lastName, :email, :phone, :property, :moveInDate)
  end
end
