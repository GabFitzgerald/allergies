# Please implement your solution to allergies in this file
class Allergies
  @@allergies = {"cats"         => 128,
                 "pollen"       => 64,
                 "chocolate"    => 32,
                 "tomatoes"     => 16,
                 "strawberries" => 8,
                 "shellfish"    => 4,
                 "peanuts"      => 2,
                 "eggs"         => 1,
  }

  def self.allergic_to(allergen : String, score : Int32) : Bool
    list(score).includes?(allergen) ? true : false
  end

  def self.list(score : Int32) : Array
    score %= 256
    return @@allergies.map do |key, value|
      if score - value >= 0
        score -= value
        key
      end
    end.compact.reverse
  end
end
