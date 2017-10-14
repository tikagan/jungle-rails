class Mailer < ApplicationMailer
  default from: 'noreply@jungle.com'

  def receipt(order)
    @email = order.email
    @order = order

    mail(to: @email, subject: "Order ##{order.id} from Jungle")
    console.log("emailed #{@email} their order #{order.id}")
end
