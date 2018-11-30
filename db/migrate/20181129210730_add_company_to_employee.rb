class AddCompanyToEmployee < ActiveRecord::Migration[5.2]
  def change
    add_column :employees, :company, :string
  end
end
