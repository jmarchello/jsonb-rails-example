class Address
  include ActiveModel::Model
  include ActiveModel::Attributes

  attribute :line1, :string
  attribute :line2, :string
  attribute :city, :string
  attribute :state, :string
  attribute :zip, :string
end