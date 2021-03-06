require 'spec_helper'
require 'power_set/mixin_examples'

require 'combinatorics/power_set/extensions/array'

describe Array do
  subject { Array }

  it_should_behave_like "PowerSet::Mixin"
end
