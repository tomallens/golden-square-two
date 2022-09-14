require_relative "../lib/grammar_check"

describe 'checks a string of text starts with a capital and ends with a sentence ender' do
  it 'returns false for empty string' do
    expect(checks_sentence_structure("")).to eq(false)
  end
  it 'returns true if string starts with capital and ends with .' do
    expect(checks_sentence_structure("A.")).to eq (true)
  end
  it 'returns true if string starts with capital and ends with !' do
    expect(checks_sentence_structure("Huge big enormous example sentence!")).to eq (true)
  end
  it 'returns true if string starts with capital and ends with ?' do
    expect(checks_sentence_structure("Zebras. Why did it have to be Zebras?")).to eq (true)
  end
  it 'returns true if string starts with capital and ends with .' do
    expect(checks_sentence_structure(".")).to eq (false)
  end
end
