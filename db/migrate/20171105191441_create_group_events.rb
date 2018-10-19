class CreateGroupEvents < ActiveRecord::Migration
  def change
    create_table :group_events do |t|
      t.string :name
      t.text :description
      t.string :location
      t.string :state, default: 'draft'
      t.date :start_date
      t.date :end_date
      t.time :deleted_at

      t.timestamps null: false
    end
  end
end
