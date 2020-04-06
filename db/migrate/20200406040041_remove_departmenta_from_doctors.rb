class RemoveDepartmentaFromDoctors < ActiveRecord::Migration[5.0]
  def change
    remove_column :doctors, :departmenta, :string
  end
end
