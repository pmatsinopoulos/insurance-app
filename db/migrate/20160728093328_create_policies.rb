class CreatePolicies < ActiveRecord::Migration
  def change
    create_table :policies do |t|

      t.timestamps null: false
    end
  end
end
