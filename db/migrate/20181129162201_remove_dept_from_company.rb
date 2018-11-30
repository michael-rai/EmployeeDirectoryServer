class RemoveDeptFromCompany < ActiveRecord::Migration[5.2]
  def change
    remove_column :companies, :dept, :string
  end
end
