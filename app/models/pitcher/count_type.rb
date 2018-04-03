class Pitcher::CountType
  attr_accessor :pitch_type
  attr_accessor :count

  def initialize(pitch_type:, count:)
    @pitch_type = pitch_type
    @count = count
  end
end
