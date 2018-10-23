class AdminSerializer < ActiveModel::Serializer
  attributes :id, :name, :email

  has_many :studios
  
  # has_many :fitness_classes, through: :studios
end
