class AddReviewToPeople < ActiveRecord::Migration[6.0]
  def change
    add_column :people, :review, :text
  end
end
