require 'spec_helper'

describe Section do
  it { should validate_presence_of :name }
  it { should belong_to :chapter }
  it { should have_many :lessons }
end
