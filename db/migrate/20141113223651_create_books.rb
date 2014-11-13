class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :title
      t.datetime :year
      t.string :publisher

      t.timestamps
    end
  end
end
