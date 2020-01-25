class CreateGives < ActiveRecord::Migration[6.0]
  def change
    create_table :gives do |t|
      t.string :name

      t.timestamps
    end
  end
end
