class CreateRscripts < ActiveRecord::Migration
  def change
    create_table :rscripts do |t|
      t.string :title
      t.text :code

      t.timestamps null: false
    end
  end
end
