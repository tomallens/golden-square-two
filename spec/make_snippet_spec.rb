require_relative '../lib/make_snippet'

context 'given 5 or less words' do
  it "returns the first 5 words" do
    expect(make_snippet('the quick brown fox jumped')).to eq('the quick brown fox jumped')
  end
  it "adds '...' if string longer than 5 words" do
    expect(make_snippet('the quick brown fox jumped over the')).to eq('the quick brown fox jumped...')
  end
end

