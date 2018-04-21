class PitchSearcher

  def initialize(first_name:, last_name:)
    @first_name = first_name
    @last_name = last_name
  end

  def hits
    GamesWide.where(pitcherFirstName: @first_name, pitcherLastName: @last_name, is_hit: 1)
  end

  def all
    GamesWide.where(pitcherFirstName: @first_name, pitcherLastName: @last_name)
  end
end
