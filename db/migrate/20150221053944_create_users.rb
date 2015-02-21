class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.jsonb :preferences, null: false, default: '{}'
      t.timestamps null: false
    end

    add_index :users, :preferences, using: :gin
  end
end
