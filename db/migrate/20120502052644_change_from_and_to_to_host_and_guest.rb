class ChangeFromAndToToHostAndGuest < ActiveRecord::Migration
  def up
    rename_column :rosham_matches, :from, :host
    rename_column :rosham_matches, :to, :guest
  end

  def down
  end
end
