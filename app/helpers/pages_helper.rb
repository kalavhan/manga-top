module PagesHelper
  def get_home_articles
    @article_categories = ArticleCategory.where('"article_categories"."id" IN 
                          (SELECT "f"."id" FROM "article_categories" "f" 
                            INNER JOIN (SELECT MAX("c"."id") as "id" FROM "article_categories" as "c"
                                GROUP BY "c"."category_id") "s"
                              ON "f"."id" = "s"."id"
                            ORDER BY "f"."created_at" DESC LIMIT(5))').
                          order('"article_categories"."category_id" ASC').
                          eager_load(:article, :category)
  end

  def articles_categories_all(id)
    arr = []
    arr2 = []
    ArticleCategory.where(category_id: id).order(created_at: :desc).limit(4).each do |articleid|
      arr.push(articleid.article_id)
    end
    puts arr
    arr.each do |ar|
      arr2.push(Article.find_by(id: ar))
    end
    puts "DDDDDDDDDD"
    puts arr2
    @articlous = arr2
  end
end
