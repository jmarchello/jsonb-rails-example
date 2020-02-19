class Company < ApplicationRecord
  attribute :addresses, AddressesType.new
end
