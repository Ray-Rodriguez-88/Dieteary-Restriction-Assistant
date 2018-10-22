class CreateUserRestrictions < ActiveRecord::Migration[5.2]
  def change
    create_table :user_restrictions do |t|
      t.belongs_to :user
      t.belongs_to :restriction


      t.timestamps
    end
  end
end
