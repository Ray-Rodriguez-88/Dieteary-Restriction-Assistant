class CreateRestrictions < ActiveRecord::Migration[5.2]
  def change
    create_table :restrictions do |t|
      t.string :source
      t.string :description

      t.timestamps
    end
  end
end
