class Substitution < ActiveRecord::Base
  def as_json(options = {})
#   super({only: [:input, :output]}.merge(options))

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
