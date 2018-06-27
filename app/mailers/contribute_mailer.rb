class ContributeMailer < ApplicationMailer
  def contribute_mail(narrate,current_user)
  @narrate = narrate
  @current_user = current_user
  mail to: current_user.email , subject: "narraterにつぶやきを投稿いたしました！"
  end
end
