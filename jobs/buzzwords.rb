buzzwords = ['Your credit card details are invalid', 'Incorrect email or password', 'Your order cannot be completed right now', 'This service is not available in your region']
buzzword_counts = Hash.new({ value: 0 })

SCHEDULER.every '2s' do
  buzzwords.each_with_index do |random_buzzword, index|
    buzzword_counts[random_buzzword] = { label: random_buzzword, value: ((99 - index*29) * 0.18).floor }
  end

  send_event('buzzwords', { items: buzzword_counts.values })
end
