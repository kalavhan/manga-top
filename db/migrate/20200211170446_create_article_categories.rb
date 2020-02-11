class CreateArticleCategories < ActiveRecord::Migration[6.0]
  def change
    create_table :article_categories do |t|
      t.integer :ArticleId
      t.integer :CategoryId

      t.timestamps
    end
  end
end
