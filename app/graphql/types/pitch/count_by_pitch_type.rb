Types::Pitch::CountByPitchType = GraphQL::ObjectType.define do
  name 'CountByPitch'

  field :first_name, !types.String
  field :last_name, !types.String
  field :count_by_pitch_types, types[Types::Pitch::CountType]
end
