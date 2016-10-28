require 'squib'

data = Squib.csv file: 'card-data-law.csv'

#This layout inspired by popular fantasy games
#
# title:
# art:
# description:
# type:
# lower_right:
# lower_left:

Squib::Deck.new cards: data['flavor'].size, layout: 'scg-rough.yml' do
  background color: 'white'
  rect layout: 'cut' # cut line as defined by TheGameCrafter
#  rect layout: 'safe' # safe zone as defined by TheGameCrafter
  rect layout: 'flavor'
  rect layout: 'flavor-safe'
  rect layout: 'cost'
  rect layout: 'cost-safe'
  rect layout: 'effect'
  rect layout: 'effect-safe'
  text str: data['flavor'], layout: 'flavor-pos'
  text str: data['cost'], layout: 'cost-pos'
  text str: data['effect'], layout: 'effect-pos'
  text str: data['variable'], layout: 'variable-pos'
#  text str: Time.now, layout: 'credits'
  save_pdf
end
