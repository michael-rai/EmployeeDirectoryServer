class RemoveEmpFromCompany < ActiveRecord::Migration[5.2]
  def change
    remove_column :companies, :emp, :string
  end
end
