class AddCompanyToCompany < ActiveRecord::Migration[5.2]
  def change
    add_column :companies, :company, :string
    add_column :companies, :string, :string
  end
end
