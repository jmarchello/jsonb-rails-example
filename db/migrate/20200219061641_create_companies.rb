class CreateCompanies < ActiveRecord::Migration[6.0]
  def change
    create_table :companies do |t|
      t.string :name, null: false
      t.string :industry
      t.jsonb :addresses
      t.timestamps
    end
  end
end
