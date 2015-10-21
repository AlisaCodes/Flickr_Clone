require 'rails_helper'

describe Image do
  it { should validate_presence_of :url}
  it { should validate_presence_of :title}
end
