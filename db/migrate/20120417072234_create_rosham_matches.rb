class CreateRoshamMatches < ActiveRecord::Migration
  def change
    create_table :rosham_matches do |t|
      t.string :host_code
      t.string :guest_code
      t.integer :host_throw
      t.integer :guest_throw

      t.timestamps
    end
  end
end
