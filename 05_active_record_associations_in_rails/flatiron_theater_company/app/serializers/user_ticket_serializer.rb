class UserTicketSerializer < ActiveModel::Serializer
  attributes :price, :production, :cats

  def production
    {title:object.production.title}
  end 

  def price
    "$#{'%.2f' % object.price}"
  end 

  # def cats
  #   "cats r cute"
  # end 

end
