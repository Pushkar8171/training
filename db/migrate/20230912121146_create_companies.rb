class CreateCompanies < ActiveRecord::Migration[7.0]
  def change
    create_table :companies do |t|
      t.string :project
      t.string :tenure

      t.timestamps
    end
  end
end
