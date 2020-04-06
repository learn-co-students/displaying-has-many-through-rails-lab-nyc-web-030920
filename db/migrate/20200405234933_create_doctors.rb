class CreateDoctors < ActiveRecord::Migration[5.0]
  def change
    create_table :doctors do |t|
      t.string :name
      t.string :dapartment
      t.datetime :created_at
      t.datetime :updated_at

      t.timestamps
    end
  end
end
