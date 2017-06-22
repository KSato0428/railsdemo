class CreateContents < ActiveRecord::Migration[5.0]
  def change
    create_table :contents do |t|
      t.string :name, null: false
      t.integer :content_type, null: false
      t.integer :status, default: -1
      t.integer :access_count, default: 0

      t.timestamps
    end

    add_index :contents, :name
  end
end
