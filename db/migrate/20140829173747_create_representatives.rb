class CreateRepresentatives < ActiveRecord::Migration
  def change
    create_table :representatives do |t|
    	t.column :name, :string
    	t.column :party, :string
    	t.column :state_id, :int
    end
  end
end
