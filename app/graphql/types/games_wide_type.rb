Types::GamesWideType = GraphQL::ObjectType.define do
  name 'GamesWide'

  field :hitterFirstName, !types.String
  field :hitterLastName, !types.String
  field :pitcherFirstName, !types.String
  field :pitcherLastName, !types.String
  field :pitchSpeed, !types.Int
end
