class Substitution < ActiveRecord::Base
  validates :input, presence: true, allow_blank: false

  def as_json(options = {})
    {
      input: input,
      inputType: 'wholewords',
      output: output,
      caseSensitive: true
    }
  end

  def to_s
    "#{input} → #{output}"
  end
end
