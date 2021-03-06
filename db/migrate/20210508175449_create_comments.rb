class CreateComments < ActiveRecord::Migration[6.0]
  def change
    create_table :comments do |t|
      t.text :text, null:false
      t.references :user, foreign_keys: true
      t.references :prototype, foreign_keys: true
      t.timestamps
    end
  end
end
