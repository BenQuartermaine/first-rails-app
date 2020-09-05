class AddFamilyMemberToPeople < ActiveRecord::Migration[6.0]
  def change
    add_column :people, :family_member, :string
  end
end
