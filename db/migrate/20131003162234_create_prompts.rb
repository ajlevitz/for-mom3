class CreatePrompts < ActiveRecord::Migration
  def change
    create_table :prompts do |t|
      t.text :question
      t.references :school, index: true

      t.timestamps
    end
  end
end
