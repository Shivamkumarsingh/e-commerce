class DropTableCart < ActiveRecord::Migration
  def change
  		drop_table(Cart)
  end
end
