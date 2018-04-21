module Fields
  class GamesWide
    def self.build
      GraphQL::Field.define do
        argument :pitcher_first_name, !types.String
        argument :pitcher_last_name, !types.String
        argument :hit_allowed, types.Boolean, default_value: false

        resolve ->(obj, args, ctx) {
          searcher = PitchSearcher.new(first_name: args[:pitcher_first_name], last_name: args[:pitcher_last_name])

          return searcher.hits if args[:hit_allowed]
          searcher.all
        }
      end
    end
  end
end
