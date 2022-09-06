# frozen_string_literal: true

RSpec.describe 'equality matchers' do
  let(:a) { 3.0 }
  let(:b) { 3 }

  # the eq matcher will test for value, but not the type. So although you are comparing a float to an integer,
  # the mathmatical value of both is the same
  describe 'eq matcher' do
    it 'tests for value, but ignores type' do
      expect(a).to eq(3)
      expect(b).to eq(3.0)
      expect(a).to eq(b)
    end
  end

  # the eql matcher checks the type as well as value, so we have to put not_to in order to pass the test. 3 != 3.0
  describe 'eql matcher' do
    it 'test for value, including the same type' do
      expect(a).not_to eql(3)
      expect(b).not_to eql(3.0)
      expect(a).not_to eql(b)

      expect(a).to eq(3.0)
      expect(b).to eq(3)
    end
  end

  # the equal matcher has an alias of be (exactly the same)
  # Equal and be will look at the identifier as well as the value of the object
  # Although the value of the array is the same, they are not identicle objects,
  # as they are stored in different places in the DB
  # Think of it in the way that you can have 2 houses next to each other that are the same,
  # althouh they are both indivdual in terms of address
  describe 'equal and be matcher' do
    let(:c) { [1, 2, 3] }
    let(:d) { [1, 2, 3] }
    let(:e) { c }

    it 'cares about object identity' do
      expect(c).to equal(e)
      expect(c).to be(e)

      expect(c).not_to equal(d)
      expect(c).not_to equal([1, 2, 3])
    end
  end
end
