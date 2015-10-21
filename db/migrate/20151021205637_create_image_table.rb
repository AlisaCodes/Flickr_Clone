class CreateImageTable < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.string :url
      t.string :title

      t.timestamps
    end
  end
end
