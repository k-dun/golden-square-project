require 'diary'

RSpec.describe 'make_snippet method' do
  it 'prints snippet' do
    result = make_snippet("Makers might just be the best bootcamp in the world.")
    expect(result).to eq "Makers might just be the..."
  end
end