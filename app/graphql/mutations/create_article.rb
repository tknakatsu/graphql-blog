module Mutations
  class CreateArticle < GraphQL::Schema::RelayClassicMutation

    argument :name, String, required: true
    argument :content, String, required: true

    field :article, Types::ArticleType, null: false

    def resolve(name:, content:)
      article = Article.new(name: name, content: content)
      article.save!
      { article: article }
    end
    
    # TODO: define return fields
    # field :post, Types::PostType, null: false

    # TODO: define arguments
    # argument :name, String, required: true

    # TODO: define resolve method
    # def resolve(name:)
    #   { post: ... }
    # end
  end
end
