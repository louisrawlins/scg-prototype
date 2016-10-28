require 'squib'

Squib::Deck.new cards: 1 do
  background color: 'ALICE_BLUE'
  rect x: 75, y: 75, width: 675, height: 975
  text str: 'Draw two cards.'
  save_png prefix: '001-test-card-', dir: '.' # save is different for github gists
end