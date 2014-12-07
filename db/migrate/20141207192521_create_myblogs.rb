class CreateMyblogs < ActiveRecord::Migration
  def change
    create_table :myblogs do |t|
      t.string :title
      t.text :body
      t.string :image
      t.string :tag

      t.timestamps
    end
  end
end
