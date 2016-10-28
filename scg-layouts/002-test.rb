require 'squib'

Squib::Deck.new cards: 1, layout: 'economy.yml' do
  background color: 'white'
  rect layout: 'cut' # cut line as defined by TheGameCrafter
  rect layout: 'safe' # safe zone as defined by TheGameCrafter
  text str: 'Robot', layout: 'title'
  text str: 'Draw two cards.', layout: 'description'
  save_png prefix: '002-test-card-', dir: '.' # save is different for github gists
end
