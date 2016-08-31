FactoryGirl.define do
  factory :article do
      title "Article title"
      text "Article text"
      
      #создаем фабрику с названием article_with_coments
      #для создания статьи с несколькими комментами
      factory :article_with_comments do
        #после создания article
        after :create do |article, evaluator|
        #создаем список из 3 комментариев
          create_list :comment, 3, article: article
        end
      end

  end
end