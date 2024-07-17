class CreateForms < ActiveRecord::Migration[7.2]
  def change
    create_table :forms do |t|
      t.string :title, default: "Form Builder"
      
      t.timestamps
    end
  end
end
