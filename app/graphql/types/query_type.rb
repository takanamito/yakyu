Types::QueryType = GraphQL::ObjectType.define do
  name 'Query'

  field :games_wide, !types[Types::GamesWideType], field: Fields::GamesWide.build

  field :pitch_type_count, !Types::Pitch::CountByPitchType do
    argument :pitcher_first_name, !types.String
    argument :pitcher_last_name, !types.String

    resolve ->(obj, args, ctx) {
      pitch_type_counts = GamesWide.where(
        pitcherFirstName: args[:pitcher_first_name],
        pitcherLastName: args[:pitcher_last_name]
      )
        .group(:pitchTypeDescription)
        .count

      Pitcher::CountByPitchType.new(
        first_name: args[:pitcher_first_name],
        last_name: args[:pitcher_last_name],
        count_by_pitch_type: pitch_type_counts
      )
    }
  end
end
