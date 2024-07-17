class CreateHeaders < ActiveRecord::Migration[7.2]
  def change
    create_table :headers do |t|
      t.string :text, default: "Header"
      t.string :text_transform, default: "none"
      t.integer :font_size, default: '48'
      t.string :font_weight, default: "Normal"
      t.string :font_style, default: "Normal"
      t.string :color, default: "#000000"
      t.string :position, default: "Left"
      t.references :form, null: false, foreign_key: true

      t.timestamps
    end
  end
end
