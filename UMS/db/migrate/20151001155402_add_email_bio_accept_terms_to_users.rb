class AddEmailBioAcceptTermsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :email, :string
    add_column :users, :accept_terms, :boolean
    add_column :users, :bio, :string 
  end
end
