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
    amount:       @reservation.amount_cents,
    description:  "Payment for reservation ",
    currency:     @reservation.amount.currency
  )

  @reservation.update(payment: charge.to_json, state: 'paid')
  redirect_to reservation_path(@reservation)

rescue Stripe::CardError => e
  flash[:alert] = e.message
  redirect_to new_reservation_payment_path(@reservation)
  end

private

  def set_reservation
    @reservation = current_user.reservations.where(state: 'pending').find(params[:reservation_id])
  end
end
