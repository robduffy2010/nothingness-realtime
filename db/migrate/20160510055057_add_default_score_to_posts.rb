class AddDefaultScoreToPosts < ActiveRecord::Migration[5.0]
  def change
   change_column_null :posts, :score,  false
   change_column_default :posts, :score, 1
  end
end
