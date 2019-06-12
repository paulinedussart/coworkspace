class PaymentsController < ApplicationController
  before_action :set_reservation

  def new
  end

  def create
    # ask stripe to charge customer card
    customer = Stripe::Customer.create(
      source: params[:stripeToken],
      email:  params[:stripeEmail]
    )

    charge = Stripe::Charge.create(
      customer:     customer.id,   # You should store this customer id and re-use it.
      amount:       @reservation.total_price_cents,
      description:  "Payment for reservation ",
      currency:     @reservation.total_price.currency
    )

    redirect_to user_reservations_path(current_user), notice: " Successful Payment! You will be charged only if the owner accepts your booking!"

  rescue Stripe::CardError => e
    flash[:alert] = e.message
    redirect_to new_reservation_payment_path(@reservation)
  end

private

  def set_reservation
    @reservation = current_user.reservations.where(status: 'PENDING').find(params[:reservation_id])
  end
end
