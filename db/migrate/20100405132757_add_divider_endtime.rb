class AddDividerEndtime < ActiveRecord::Migration
  def self.up
    add_column :agenda_dividers, :end_time, :datetime
    
    AgendaDivider.record_timestamps = false
    AgendaDivider.all.each do |divider|
      divider.save
    end
    
  end

  def self.down
    remove_column :agenda_dividers, :end_time
  end
end
