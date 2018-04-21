Types::GamesWideType = GraphQL::ObjectType.define do
  name 'GamesWide'

  field :hitterFirstName, !types.String
  field :hitterLastName, !types.String
  field :hitterWeight, !types.Int
  field :hitterHeight, !types.Int
  field :hitterBatHand, !types.String
  field :pitcherFirstName, !types.String
  field :pitcherLastName, !types.String
  field :dayNight, !types.String
  field :venueName, !types.String
  field :venueSurface, !types.String
  field :venueCapacity, !types.Int
  field :balls, !types.Int
  field :strikes, !types.Int
  field :outs, !types.Int
  field :pitchSpeed, !types.Int
  field :pitchType, !types.String
  field :pitchTypeDescription, !types.String
  field :pitchZone, !types.Int
  field :is_hit, !types.Boolean
  field :hitType, !types.String
end
