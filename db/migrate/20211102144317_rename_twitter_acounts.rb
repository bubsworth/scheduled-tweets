class RenameTwitterAcounts < ActiveRecord::Migration[6.1]
  def change
    rename_table :twitter_acounts, :twitter_accounts
  end
end
