require_relative '../lib/reading_time'

context 'count words in string and divide by 200' do
  it 'returns 0 for empty string' do
    expect(find_time_to_read('')).to eq(0)
  end
  it 'returns 1 for string of < 200 words' do
    expect(find_time_to_read('this is a test')).to eq(1)
  end
  it 'returns 2 for a string of >= 200 words' do
    expect(find_time_to_read('a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a')).to eq(2)
  end
end
