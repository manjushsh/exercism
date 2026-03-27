module Blackjack
  def self.parse_card(card)
    case card
      when "other" then 0
      when "two" then 2
      when "three" then 3
      when "four" then 4
      when "five" then 5
      when "six" then 6
      when "seven" then 7
      when "eight" then 8
      when "nine" then 9
      when "ten", "jack", "queen", "king" then 10
      when "ace" then 11
      else 0
    end
  end

  def self.card_range(card1, card2)
    total = parse_card(card1) + parse_card(card2)
  
    case total
      when 1..11 then "low"
      when 12..16 then "mid"
      when 17..20 then "high"
      else "blackjack"
    end
  end

  def self.first_turn(card1, card2, dealer_card)
    player_total = parse_card(card1) + parse_card(card2)
    dealer_value = parse_card(dealer_card)
  
    case true
      when card1 == "ace" && card2 == "ace"
        "P"
      when player_total == 21 && !(dealer_value >= 10 || dealer_card == "ace")
        "W"
      when player_total == 21
        "S"
      when player_total >= 17 && player_total <= 20
        "S"
      when player_total >= 12 && player_total <= 16
        dealer_value >= 7 ? "H" : "S"
      else
        "H"
      end
  end
end
