class DropTableCompanies < ActiveRecord::Migration[5.2]
  def change
    drop_table :companies, force: :cascade
  end
end
