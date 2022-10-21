class ProductionSerializer < ActiveModel::Serializer
  attributes :id, :title, :genre, :director, :description, :ongoing, :budget
  has_many :cast_members

  def budget
    "$#{'%.2f' % object.budget}"
  end 
end
