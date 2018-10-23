class StudioSerializer < ActiveModel::Serializer
  attributes :id, :name, :street_address, :city, :zip_code, :phone, :image, :website, :hours, :promos

  belongs_to :admin
  has_many :fitness_classes
end

