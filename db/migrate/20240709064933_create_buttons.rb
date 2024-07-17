class CreateButtons < ActiveRecord::Migration[7.2]
  def change
    create_table :buttons do |t|
      t.string :text, default: "Button"
      t.string :text_transform, default: "none"
      t.integer :font_size, default: '16'
      t.string :font_weight, default: "Normal"
      t.string :font_style, default: "Normal"
      t.string :color, default: "#FFFFFF"
      t.string :background_color, default: "#0000FF"
      t.string :position, default: "Left"
      t.string :button_type, default: "Button"
      t.references :form, null: false, foreign_key: true

      t.timestamps
    end
  end
end
