class AddFromToRoshamMatches < ActiveRecord::Migration
  def change
    add_column :rosham_matches, :from, :string
  end
end
