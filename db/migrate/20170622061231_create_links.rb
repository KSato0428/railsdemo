class CreateLinks < ActiveRecord::Migration[5.0]
  def change
    create_table :links do |t|
      t.belongs_to :content
      t.string :url

      t.timestamps
    end
  end
end
