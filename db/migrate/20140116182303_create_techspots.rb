class CreateTechspots < ActiveRecord::Migration
  def change
    create_table :techspots do |t|
      t.string    :creator
      t.integer   :x
      t.integer   :y
      t.string    :shape, :default=>"circle"
      t.string    :color, :default=>"red"
      t.string    :name
      t.string    :url
      t.string    :desc
      t.string    :layer, :default=>"assess"
      t.string    :sector
      t.timestamps
    end
  end
end
