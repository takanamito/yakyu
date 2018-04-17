module Fields
  class GamesWide
    def self.build
      GraphQL::Field.define do
        type GamesWide
        argument :hitter_first_name, !types.String
        argument :hitter_last_name, !types.String

        resolve ->(obj, args, ctx) {
          ::GamesWide.find_by(
            hitterFirstName: args[:hitter_first_name],
            hitterLastName: args[:hitter_last_name]
          )
        }
      end
    end
  end
end
