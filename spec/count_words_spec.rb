require_relative '../lib/count_words'

context 'gives the no. words when passed a string' do
  it 'returns 0 for empty' do
    expect(count_words('')).to eq(0)
  end
  it 'returns number of words when string has 1+' do
    expect(count_words('look some words')).to eq(3)
  end
end