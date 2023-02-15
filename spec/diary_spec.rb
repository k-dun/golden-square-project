require 'diary'

RSpec.describe 'make_snippet method' do
  it 'prints snippet' do
    result = make_snippet("Makers might just be the best bootcamp in the world.")
    expect(result).to eq "Makers might just be the..."
  end
end

RSpec.describe 'count_words method' do
  it "counts words in the string" do
    result = count_words("RSpec please don't disRSpect me.")
    expect(result).to eq 5
  end
end