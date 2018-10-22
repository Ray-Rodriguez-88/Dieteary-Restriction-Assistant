class CreateSavedApiResults < ActiveRecord::Migration[5.2]
  def change
    create_table :saved_api_results do |t|
      t.string :title
      t.string :description
      t.string :ingredients
      

      t.timestamps
    end
  end
end
