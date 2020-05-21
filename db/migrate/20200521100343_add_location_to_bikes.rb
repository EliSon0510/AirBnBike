class AddLocationToBikes < ActiveRecord::Migration[6.0]
  def change
    add_column :bikes, :location, :string
  end
end
