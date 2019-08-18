class Round
  attr_reader :deck, :turns, :current_card, :number_correct

  def initialize(deck)
    @deck = deck
    @turns = []
    @current_card = @deck.cards.first
    @number_correct = 0
  end


  def take_turn(guess)
    turn = Turn.new(guess, current_card)
    @turns << turn
    if turn.correct?
      @number_correct + 1
    end
    turn
    new_deck = @deck.cards.rotate!
    @current_card = new_deck.first
  end


  #
  # def number_correct_by_category(category)
  #   if category == :Geography
  #     1
  #   elsif category == :STEM
  #     0
  #   end
  # end
  #
  #
  # def percent_correct_by_category(category)
  #   #look into the filter enum
  #   filtered =
  #     @turns.map do |turn|
  #       if turn.card.category == category && turn.guess == turn.card.answer
  #         turn
  #       end
  #     end
  #   correct_count_by_category = filtered.count
  #   (correct_count_by_category / @turns.count) * 100.0
  # end
  #
  # def percent_correct
  #   skip
  #
  # end
  #
  # def number_correct_by_category(category)
  #   correct_in_category = []
  #   @turns.each do |turn|
  #     if turn.card.category == (category) && turn.correct?
  #     correct_in_category << turn
  #     end
  #     correct_in_category.count
  #   end
  # end

end
