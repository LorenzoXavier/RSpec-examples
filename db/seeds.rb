puts "You're in the seeding file"
Tile.destroy_all
puts "All previous tiles have been removed"

tile = Tile.new(
  title: "Card model RSpec checks",
  model_link: "https://github.com/LorenzoXavier/RSpec-examples/blob/main/app/models/card.rb",
  spec_link: "https://github.com/LorenzoXavier/RSpec-examples/blob/main/spec/models/card_spec.rb",
  body: "<p>This has a mixture of techniques including</p>
    <ul>
      <li>Before block</li>
      <li>Defining and calling methods within test</li>
      <li>Let helper method</li>
      <li>Custom error messages</li>
    </ul>
    <p>To run the spec file for the Card model, run: <br>
    <strong>$ rspec ./spec/models/card_spec.rb</strong></p>
  "
)
puts "Tile created: '#{tile.title}'"
tile.save!
