class CreateNotes < ActiveRecord::Migration
  def change
    create_table :notes do |t|
      t.references :user, index: true
      t.text :content
      t.string :title

      t.timestamps
    end
  end
end
