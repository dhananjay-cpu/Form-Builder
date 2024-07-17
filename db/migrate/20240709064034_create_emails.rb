class CreateEmails < ActiveRecord::Migration[7.2]
  def change
    create_table :emails do |t|
      t.string :text, default: "Email"
      t.string :placeholder, default: "Type here"
      t.string :text_transform, default: "none"
      t.string :defalt_value
      t.integer :font_size, default: '16'
      t.string :font_weight, default: "Normal"
      t.string :font_style, default: "Normal"
      t.string :color, default: "#000000"
      t.string :position, default: "Left"
      t.string :required, default: "False"
      t.string :disable, default: "False"
      t.references :form, null: false, foreign_key: true

      t.timestamps
    end
  end
end
