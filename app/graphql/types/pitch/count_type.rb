Types::Pitch::CountType = GraphQL::ObjectType.define do
  name 'Count'

  field :pitch_type, !types.String
  field :count, !types.Int
end
