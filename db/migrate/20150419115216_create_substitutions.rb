class CreateSubstitutions < ActiveRecord::Migration
  def change
    create_table :substitutions do |t|
      t.string :input, null: false
      t.string :output, null: false

      t.index :input, unique: true

      t.timestamps null: false
    end
  end
end
