require 'spec_helper'
require 'permute/mixin_examples'

require 'combinatorics/permute/extensions/set'

describe Set do
  subject { Set }

  it_should_behave_like "Permute::Mixin"
end
