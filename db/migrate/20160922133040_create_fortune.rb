class CreateFortune < ActiveRecord::Migration
  def change
    create_table :fortunes do |t|
      t.text :body, null: false
      t.timestamps
    end
  end
end
