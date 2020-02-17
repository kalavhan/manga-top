module ArticlesHelper
  def get_articles_per_categorie(category_id)
    @articles_per_categorie = ArticleCategory.articles_of_categorie(category_id)
  end
end
