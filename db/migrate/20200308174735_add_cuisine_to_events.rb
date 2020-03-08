class AddCuisineToEvents < ActiveRecord::Migration[5.2]
  def change
    add_column :events, :cuisine, :text
  end
end
