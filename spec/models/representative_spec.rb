require 'rails_helper'

describe Representative do
	it { should validate_presence_of :name}
	it { should validate_presence_of :party}
	it { should belong_to :state}
end