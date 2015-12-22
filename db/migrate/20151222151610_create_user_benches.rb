class CreateUserBenches < ActiveRecord::Migration
  def change
    create_table :user_benches do |t|
      t.string :user
      t.integer :bench_time

      t.timestamps null: false
    end
  end
end
