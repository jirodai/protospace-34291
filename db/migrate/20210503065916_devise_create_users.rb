# frozen_string_literal: true

class DeviseCreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      ## Database authenticatable
      t.string :email, null: false, default: ""
      t.string :password, null: false, default: ""
      t.text :profile, null: false
      t.text :occupation, null: false
      t.text :position, null: false 
    end
  end
end
