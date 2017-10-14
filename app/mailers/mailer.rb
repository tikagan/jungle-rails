class Mailer < ApplicationMailer
  default from: 'noreply@jungle.com'

  def receipt(order_id)
    @order = Order.find(order_id)
    @user = @order.email
    @line_items = @order.line_items

    mail(to: @order.email, subject: "Order ##{@order.id} Confirmation")
  end
end
