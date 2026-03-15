module Chess
  # TODO: define the 'RANKS' constant
  RANKS = (1..8)
  # TODO: define the 'FILES' constant
  FILES = ('A'..'H')

  def self.valid_square?(rank, file)
    RANKS.include?(rank) && FILES.include?(file)
    # if(RANKS.include?(rank) and FILES.include?(file))
    #   return true
    # else 
    #   return false
    # end
  end

  def self.nickname(first_name, last_name)
    return (first_name[0..1] + last_name[-2..-1]).upcase
  end

  def self.move_message(first_name, last_name, square)
    file = square[0]
    rank = square[1].to_i

    if(valid_square?(rank, file))
      return "#{self.nickname(first_name, last_name)} moved to #{square}"
    else
      return "#{self.nickname(first_name, last_name)} attempted to move to #{square}, but that is not a valid square"
    end
  end
end
