class CreateNews < ActiveRecord::Migration
  def change
    create_table :news do |t|
      t.string :title
      t.text :desc
      t.string :image

      t.timestamps
    end
  end
end
