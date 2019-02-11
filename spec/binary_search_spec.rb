require 'spec_helper'
require 'binary_search'

RSpec.describe BinarySearch do
  describe '#search' do
    subject { described_class.new }

    context 'searching integer' do
      let(:list) { (1..100).to_a }

      it { expect(subject.search(101, list)).to be_nil }

      it { expect(subject.search(-1, list)).to be_nil }

      it { expect(subject.search(75, list)).to eq 75 }
    end

    context 'searching string' do
      let(:list) { ('a'..'p').to_a }

      it { expect(subject.search('z', list)).to be_nil }

      it { expect(subject.search('b', list)).to eq 'b' }
    end
  end

  context 'validations' do
    context 'when the list is not sorted' do
      subject { described_class.new.search(1, [2,3,1,4,6,5,7,9,8]) }

      it 'raise ArgumentError' do
        expect{ subject }.to raise_error(ArgumentError, 'the list must be sorted')
      end
    end
  end
end
