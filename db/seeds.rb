puts "You're in the seeding file"
Tile.destroy_all
puts "All previous tiles have been removed"

tile = Tile.new(
  title: "Title for tile",
  model_link: "https://github.com/LorenzoXavier/RSpec-examples/blob/main/app/models/card.rb",
  spec_link: "https://github.com/LorenzoXavier/RSpec-examples/blob/main/spec/models/card_spec.rb",
  body: "Run rake to see this working"
)
puts "Tile created: '#{tile.title}'"
tile.save!
