class Pitcher::CountByPitchType
  attr_accessor :first_name
  attr_accessor :last_name

  def initialize(first_name:, last_name:, count_by_pitch_type: [])
    @first_name = first_name
    @last_name = last_name
    @count_by_pitch_type = count_by_pitch_type
  end

  def count_by_pitch_types
    @count_by_pitch_type.each_with_object([]) do |(key, value), results|
      pitch_type = key.present? ? key : 'Other'
      results << Pitcher::CountType.new(pitch_type: pitch_type, count: value)
    end
  end
end
