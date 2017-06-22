class CreateAbstracts < ActiveRecord::Migration[5.0]
  def change
    create_table :abstracts do |t|
      t.belongs_to :content, null: false
      t.string :description

      t.timestamps
    end
  end
end
