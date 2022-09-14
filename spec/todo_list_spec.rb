require_relative '../lib/todo_list'

describe 'todo_list checks a string for "#TODO"' do
  it 'returns false for an empty string' do
    expect(todo_checker("")).to eq (false)
  end
  it 'returns false if "#TODO" absent' do
    expect(todo_checker("this is a string")).to eq (false)
  end
  it 'returns true if contains "#TODO"' do
    expect(todo_checker("#TODO")).to eq (true)
  end
  it 'returns false if contains "#todo"' do
    expect(todo_checker("#todo or not #todo")).to eq (false)
  end
  it 'returns true if contains multiple iterations of "#TODO"' do
    expect(todo_checker("#TODO or not #TODO")).to eq (true)
  end
end
  
  