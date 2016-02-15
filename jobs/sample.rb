current_valuation = 0
current_karma = 0

SCHEDULER.every '2s' do
  last_valuation = current_valuation
  last_karma     = current_karma
  current_valuation = rand(100)
  current_karma     = rand(200000)

  send_event('valuation', { current: current_valuation, last: last_valuation })
  send_event('karma', { current: current_karma, last: last_karma })
  send_event('synergy',   { value: 34 })
  send_event('memory',   { value: 61 })

  send_event('sales',   { current: 130165, last: 119751})
  send_event('books',   { current: 16223, last: 15249 })
  send_event('cross',   { value: 14 })
  send_event('voucher',   { value: 812 })
  send_event('new',   { value: 96 })
end
