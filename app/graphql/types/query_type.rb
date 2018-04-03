Types::QueryType = GraphQL::ObjectType.define do
  name 'Query'

  field :games_wide, !Types::GamesWideType do
    argument :hitter_first_name, !types.String
    argument :hitter_last_name, !types.String

    resolve ->(obj, args, ctx) {
      GamesWide.find_by(
        hitterFirstName: args[:hitter_first_name],
        hitterLastName: args[:hitter_last_name]
      )
    }
  end

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
