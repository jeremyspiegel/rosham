class AddToToRoshamMatches < ActiveRecord::Migration
  def change
    add_column :rosham_matches, :to, :string
  end
end
