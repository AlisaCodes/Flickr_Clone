require 'rails_helper'

describe User do
  it { should validate_presence_of :avatar }
  it { should have_many :images }
end
