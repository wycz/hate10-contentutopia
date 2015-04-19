class Substitution < ActiveRecord::Base
  def to_s
    "#{input} → #{output}"
  end
end
