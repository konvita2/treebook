class CreateStatus2s < ActiveRecord::Migration
  def change
    create_table :status2s do |t|
      t.string :name
      t.text :content

      t.timestamps null: false
    end
  end
end
