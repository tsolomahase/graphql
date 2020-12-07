Types::QueryType = GraphQL::ObjectType.define do
  name "Query"

  field :testField, types.String do
    description "An example field added by the generator"
    resolve ->(obj, args, ctx) {
      "Hello World!"
    }
  end
  field :post, !Types::PostType do
    resolve ->(_obj, _args, ctx) {
      ctx[:post]
    }
  end
end
