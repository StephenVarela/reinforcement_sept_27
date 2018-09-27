def select_cards(possible_cards, hand)

while hand.size < 3
    possible_cards.delete_if do |card|
      hand.include?(card)
    end

    possible_cards.each do |current_card|
      print "Do you want to pick up #{current_card}?"
      answer = gets.chomp
      if answer.downcase == 'y'
        hand << current_card
      end
      if hand.size >= 3
        return hand
      end
    end
  end
end

available_cards = ['queen of spades', '2 of clubs', '3 of diamonds', 'jack of spades', 'queen of hearts']

new_hand = select_cards(available_cards, [])

display_hand = new_hand.join("\n")

puts "Your new hand is: \n#{display_hand}"
