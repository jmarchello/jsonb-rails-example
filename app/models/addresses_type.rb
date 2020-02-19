class AddressesType < ActiveModel::Type::Value
  def type
    :jsonb
  end

  def deserialize(value)
    puts "LOADING VALUE: #{value}"

    case value
    when String
      decoded = ActiveSupport::JSON.decode(value) rescue nil
      if decoded.kind_of?(Array)
        addresses = []
        decoded.each do |decoded_item|
          address = Address.new(decoded_item) unless decoded_item.nil?
          addresses.push(address)
        end
        addresses
      else
        [Address.new(decoded)] unless decoded.nil?
      end
    when Hash
      Address.new(value)
    when Address
      value
    end
  end
  def serialize(value)
    puts "SAVING VALUE: #{value}"
    case value
    when Array, Hash, Address
      ActiveSupport::JSON.encode(value)
    else
      super
    end
  end
end