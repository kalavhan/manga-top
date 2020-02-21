class ArticleCategory < ApplicationRecord
  belongs_to :article, class_name: :Article
  belongs_to :category, class_name: :Category

  def self.five_most_recent_articles
    ArticleCategory.where('"article_categories"."id" IN 
                          (SELECT "f"."id" FROM "article_categories" "f" 
                            INNER JOIN (SELECT MAX("c"."id") as "id" 
                            FROM "article_categories" as "c"
                            INNER JOIN
                            (SELECT MIN("x"."id") as "id", "x"."article_id" 
                              FROM "article_categories" as "x"
                              GROUP BY "x"."article_id") "d" ON "c"."id" = "d"."id"  
                            GROUP BY "c"."category_id"
                            ) "s"
                          ON "f"."id" = "s"."id"
                          ORDER BY "f"."created_at" DESC LIMIT(5))').
                    order('"article_categories"."category_id" ASC').
                    eager_load(:article, :category)
  end

  def self.articles_of_categorie(id)
    ArticleCategory.where("article_categories.category_id = ?", id).
                    order(created_at: :desc).
                    limit(4).
                    eager_load({:article => :votes}, :category)
  end
  
  def self.cat_with_art
    ArticleCategory.includes(:category).select('DISTINCT "article_categories"."category_id"')
  end
end
