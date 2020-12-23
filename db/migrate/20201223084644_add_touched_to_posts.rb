class AddTouchedToPosts < ActiveRecord::Migration[6.1]
  def change
    add_column :posts, :touched, :boolean, default: false
  end
end
