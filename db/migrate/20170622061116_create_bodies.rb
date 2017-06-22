class CreateBodies < ActiveRecord::Migration[5.0]
  def change
    create_table :bodies do |t|
      t.belongs_to :content
      t.text :text

      t.timestamps
    end
  end
end
