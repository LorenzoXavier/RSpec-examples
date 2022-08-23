puts "You're in the seeding file"
Tile.destroy_all
puts "All previous tiles have been removed"

tile = Tile.new(
  title: "Explicit subject",
  model_link: "",
  spec_link: "https://github.com/LorenzoXavier/RSpec-examples/blob/main/spec/models/explicit_subject_spec.rb",
  body: "<p>Playing with explicit subject, in this instance defining the subject(:bob) as the Hash</p>
    <p>To run the spec file for the overwriting_let model, run: <br>
    <strong>$ rspec ./spec/models/explicit_subject_spec.rb</strong></p>
  "
)
puts "Tile created: '#{tile.title}'"
tile.save!

tile = Tile.new(
  title: "Implicit subject",
  model_link: "",
  spec_link: "https://github.com/LorenzoXavier/RSpec-examples/blob/main/spec/models/implicit_subject_spec.rb",
  body: "<p>Playing with implicit subject as defined after describe in the test</p>
    <p>To run the spec file for the overwriting_let model, run: <br>
    <strong>$ rspec ./spec/models/implicit_subject_spec.rb</strong></p>
  "
)
puts "Tile created: '#{tile.title}'"
tile.save!

tile = Tile.new(
  title: "Overwriting Let",
  model_link: "",
  spec_link: "https://github.com/LorenzoXavier/RSpec-examples/blob/main/spec/models/overwriting_let_spec.rb",
  body: "<p>Overwriting the Let by defining a new object within the scope of the parent block</p>
    <p>To run the spec file for the overwriting_let model, run: <br>
    <strong>$ rspec ./spec/models/overwriting_let_spec.rb</strong></p>
  "
)
puts "Tile created: '#{tile.title}'"
tile.save!

tile = Tile.new(
  title: "Nested hooks",
  model_link: "",
  spec_link: "https://github.com/LorenzoXavier/RSpec-examples/blob/main/spec/models/nested_hooks_spec.rb",
  body: "<p>Understanding how nested hooks are read</p>
    <p>To run the spec file for the before_and_afeter model, run: <br>
    <strong>$ rspec ./spec/models/nested_hooks_spec.rb</strong></p>
  "
)
puts "Tile created: '#{tile.title}'"
tile.save!

tile = Tile.new(
  title: "Before and after hooks",
  model_link: "",
  spec_link: "https://github.com/LorenzoXavier/RSpec-examples/blob/main/spec/models/before_and_after_spec.rb",
  body: "<p>Using the before and after hooks</p>
    <ul>
      <li>before(:example) # run before each example</li>
      <li>before(:context) # run one time only, before all of the examples in a group</li>
      <li>after(:example) # run after each example</li>
      <li>after(:context) # run one time only, after all of the examples in a group</li>
    </ul>
    <p>To run the spec file for the before_and_afeter model, run: <br>
    <strong>$ rspec ./spec/models/before_and_after_spec.rb</strong></p>
  "
)
puts "Tile created: '#{tile.title}'"
tile.save!

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

tile = Tile.new(
  title: "Nesting using describe and context",
  model_link: "",
  spec_link: "https://github.com/LorenzoXavier/RSpec-examples/blob/main/spec/models/context_spec.rb",
  body: "<p>Nesting a basic Class Method test using describe and context</p>
    <p>To run the spec file for the Context model, run: <br>
    <strong>$ rspec ./spec/models/context_spec.rb</strong></p>
  "
)
puts "Tile created: '#{tile.title}'"
tile.save!

tile = Tile.new(
  title: "Basic School Model with relating spec file",
  model_link: "https://github.com/LorenzoXavier/RSpec-examples/blob/main/app/models/school.rb",
  spec_link: "https://github.com/LorenzoXavier/RSpec-examples/blob/main/spec/models/school_spec.rb",
  body: "<p>Basic initializing of School class with 2 tests</p>
    <ul>
      <li>First: Create a new School object and checked the name is stored</li>
      <li>Second: Create new school object with no students</li>
    </ul>
    <p>To run the spec file for the School model, run: <br>
    <strong>$ rspec ./spec/models/school_spec.rb</strong></p>
  "
)
puts "Tile created: '#{tile.title}'"
tile.save!

