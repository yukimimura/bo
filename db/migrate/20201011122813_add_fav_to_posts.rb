class AddFavToPosts < ActiveRecord::Migration[5.2]
  def change
    add_column :posts, :fav, :integer
  end
end
