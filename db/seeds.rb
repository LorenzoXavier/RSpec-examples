puts "You're in the seeding file"
Tile.destroy_all
puts "All previous tiles have been removed"

tile = Tile.new(
  title: "change matcher",
  model_link: "",
  spec_link: "https://github.com/LorenzoXavier/RSpec-examples/blob/master/spec/models/change_matcher_spec.rb",
  body: "<p>Checking that something changes as a result of method invocation.<br>I.e if you remove an element from an array, the count will change by one in length
  <br>To run the spec file for the overwriting_let model, run: <br>
    <strong>$ rspec ./spec/models/change_matcher_spec.rb</strong>
  </p>
  "
)
puts "Tile created: '#{tile.title}'"
tile.save!

tile = Tile.new(
  title: "be matcher",
  model_link: "",
  spec_link: "https://github.com/LorenzoXavier/RSpec-examples/blob/master/spec/models/be_matcher_spec.rb",
  body: "<p>Checking for <strong>Truthy or falsy</strong> by calling the <strong>be matcher</strong>
  <br>To run the spec file for the overwriting_let model, run: <br>
    <strong>$ rspec ./spec/models/be_matcher_spec.rb</strong>
  </p>
  "
)
puts "Tile created: '#{tile.title}'"
tile.save!

tile = Tile.new(
  title: "All matcher",
  model_link: "",
  spec_link: "https://github.com/LorenzoXavier/RSpec-examples/blob/master/spec/models/all_matcher_spec.rb",
  body: "<p>Refining code using the <strong>all matcher.</strong> <br>This works the same as calling <strong>.each do</strong> method 
  <br>To run the spec file for the overwriting_let model, run: <br>
    <strong>$ rspec ./spec/models/all_matcher_spec.rb</strong></p>
  "
)
puts "Tile created: '#{tile.title}'"
tile.save!

tile = Tile.new(
  title: "predicate methods",
  model_link: "",
  spec_link: "https://github.com/LorenzoXavier/RSpec-examples/blob/master/spec/models/predicate_methods_spec.rb",
  body: "<p>Working with predicate methods to use RSpec under the hood magic.<br>
    E.g : you can change: <br>
    result = 16/2<br>
    expect(result.even?).to eq(true)<br>
    to: <br>
    expect(16 / 2).to be_even
    <br>To run the spec file for the overwriting_let model, run: <br>
    <strong>$ rspec ./spec/models/predicate_methods_spec.rb</strong></p>
  "
)
puts "Tile created: '#{tile.title}'"
tile.save!

tile = Tile.new(
  title: "comparison matchers",
  model_link: "",
  spec_link: "https://github.com/LorenzoXavier/RSpec-examples/blob/master/spec/models/comparison_matchers_spec.rb",
  body: "<p>Using comparisons such as < > <= >=<br>
    To run the spec file for the overwriting_let model, run: <br>
    <strong>$ rspec ./spec/models/comparison_matchers_spec.rb</strong></p>
  "
)
puts "Tile created: '#{tile.title}'"
tile.save!

tile = Tile.new(
  title: "Equality matchers",
  model_link: "",
  spec_link: "https://github.com/LorenzoXavier/RSpec-examples/blob/master/spec/models/equality_matchers_spec.rb",
  body: "<p>Demonstarting the difference between <strong>eg<br>egl<br>equal/be</strong></p>
    <ul>
      <li>the eq matcher will test for value, but not the type. So although you are comparing a float to an integer, the mathmatical value of both is the same</li>
      <li>the eql matcher checks the type as well as value, so we have to put not_to in order to pass the test. 3 != 3.0</li>
      <li>the equal matcher has an alias of be (exactly the same)
        Equal and be will look at the identifier as well as the value of the object
        Although the value of the array is the same, they are not identicle objects, as they are stored in different places in the DB
        Think of it in the way that you can have 2 houses next to each other that are the same, althouh they are both indivdual in terms of address</li>
    </ul>
    <p>To run the spec file for the overwriting_let model, run: <br>
    <strong>$ rspec ./spec/models/equality_matchers_spec.rb</strong></p>
  "
)
puts "Tile created: '#{tile.title}'"
tile.save!

tile = Tile.new(
  title: "not_to method",
  model_link: "",
  spec_link: "https://github.com/LorenzoXavier/RSpec-examples/blob/master/spec/models/not_to_method_spec.rb",
  body: "<p>Demonstarting the use of the not_to method, with works the opposite of the to method. I.e <strong>expect(5).not_to eg(1) </strong> would return 5 != 1</p>
    <p>To run the spec file for the overwriting_let model, run: <br>
    <strong>$ rspec ./spec/models/not_to_method_spec.rb</strong></p>
  "
)
puts "Tile created: '#{tile.title}'"
tile.save!

tile = Tile.new(
  title: "Shared context",
  model_link: "",
  spec_link: "https://github.com/LorenzoXavier/RSpec-examples/blob/master/spec/models/shared_context_spec.rb",
  body: "<p>Defining a shared helper. In this example it is called 'common'. You can see how you can make a globally accessible helper using <strong>RSpec.shared_context</strong>, and then call access to it by writting <strong>include_context 'common'</strong> within your test.</p>
    <p>To run the spec file for the overwriting_let model, run: <br>
    <strong>$ rspec ./spec/models/shared_context_spec.rb</strong></p>
  "
)
puts "Tile created: '#{tile.title}'"
tile.save!

tile = Tile.new(
  title: "Shared examples",
  model_link: "",
  spec_link: "https://github.com/LorenzoXavier/RSpec-examples/blob/master/spec/models/shared_examples_spec.rb",
  body: "<p>Drying up the code by creating a shared_examples test that we can call using include_examples. This means you can write one test that can be re called where needed - similar to defining methods in the helper</p>
    <p>To run the spec file for the overwriting_let model, run: <br>
    <strong>$ rspec ./spec/models/shared_examples_spec.rb</strong></p>
  "
)
puts "Tile created: '#{tile.title}'"
tile.save!

tile = Tile.new(
  title: "One liner syntax",
  model_link: "",
  spec_link: "https://github.com/LorenzoXavier/RSpec-examples/blob/master/spec/models/one_liner_syntax_spec.rb",
  body: "<p>Refactroing code to make the it test one line rather than three</p>
    <p>To run the spec file for the overwriting_let model, run: <br>
    <strong>$ rspec ./spec/models/one_liner_syntax_spec.rb</strong></p>
  "
)
puts "Tile created: '#{tile.title}'"
tile.save!

tile = Tile.new(
  title: "Described Class",
  model_link: "",
  spec_link: "https://github.com/LorenzoXavier/RSpec-examples/blob/master/spec/models/described_class_spec.rb",
  body: "<p>described_class is referenceing whatever class is under test (in this case King)<br>This means you do not have to change all the occurances on the class calls, as this approach is dynamic - making it dynamic if you make changes</p>
    <p>To run the spec file for the overwriting_let model, run: <br>
    <strong>$ rspec ./spec/models/described_class_spec.rb</strong></p>
  "
)
puts "Tile created: '#{tile.title}'"
tile.save!

tile = Tile.new(
  title: "Explicit subject",
  model_link: "",
  spec_link: "https://github.com/LorenzoXavier/RSpec-examples/blob/master/spec/models/explicit_subject_spec.rb",
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
  spec_link: "https://github.com/LorenzoXavier/RSpec-examples/blob/master/spec/models/implicit_subject_spec.rb",
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
  spec_link: "https://github.com/LorenzoXavier/RSpec-examples/blob/master/spec/models/overwriting_let_spec.rb",
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
  spec_link: "https://github.com/LorenzoXavier/RSpec-examples/blob/master/spec/models/nested_hooks_spec.rb",
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
  spec_link: "https://github.com/LorenzoXavier/RSpec-examples/blob/master/spec/models/before_and_after_spec.rb",
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
  model_link: "https://github.com/LorenzoXavier/RSpec-examples/blob/master/app/models/card.rb",
  spec_link: "https://github.com/LorenzoXavier/RSpec-examples/blob/master/spec/models/card_spec.rb",
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
  spec_link: "https://github.com/LorenzoXavier/RSpec-examples/blob/master/spec/models/context_spec.rb",
  body: "<p>Nesting a basic Class Method test using describe and context</p>
    <p>To run the spec file for the Context model, run: <br>
    <strong>$ rspec ./spec/models/context_spec.rb</strong></p>
  "
)
puts "Tile created: '#{tile.title}'"
tile.save!

tile = Tile.new(
  title: "Basic School Model with relating spec file",
  model_link: "https://github.com/LorenzoXavier/RSpec-examples/blob/master/app/models/school.rb",
  spec_link: "https://github.com/LorenzoXavier/RSpec-examples/blob/master/spec/models/school_spec.rb",
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


