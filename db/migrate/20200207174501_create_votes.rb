class CreateVotes < ActiveRecord::Migration[6.0]
  def change
    create_table :votes do |t|
      t.integer :UserId
      t.integer :ArticleId

      t.timestamps
    end
  end
end
