class CreateWorkers < ActiveRecord::Migration
  def change
    create_table :workers do |t|
      t.string :name
      t.string :role
      t.string :image
      t.text :desc

      t.timestamps
    end
  end
end
