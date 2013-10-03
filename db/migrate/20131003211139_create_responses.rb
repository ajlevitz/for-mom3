class CreateResponses < ActiveRecord::Migration
  def change
    create_table :responses do |t|
      t.references :prompt, index: true
      t.references :user, index: true
      t.text :comments

      t.timestamps
    end
  end
end
