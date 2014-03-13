class CreateNotes < ActiveRecord::Migration
  def change
    create_table :notes do |t|
      t.references  :techspot
      t.text        :text
      t.string      :editor
      t.timestamps
    end
  end
end
