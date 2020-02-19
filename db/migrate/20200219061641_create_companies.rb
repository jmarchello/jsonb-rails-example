class CreateCompanies < ActiveRecord::Migration[6.0]
  def change
    create_table :companies do |t|
      t.string :name, null: false
      t.string :industry, null: false
      t.jsonb :addresses, null: false
      t.timestamps
    end
  end
end
