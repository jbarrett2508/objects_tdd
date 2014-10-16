require_relative '../../lib/object'

describe Run do

  before do
    @run = Run.new(@miles, @time)
  end

  it 'should calculate pace' do
    expect(@pace).to eq(@miles / @time)
  end
#
#   it 'should return "Slow down!"' do
#     expect(pace <= 6).to eq(true)
#   end
#
#   it 'should return "Speed up!"' do
#     expect(pace >= 8).to eq(true)
#   end
#
#   it 'should return "Nice job! You\'re done!"' do
#     expect(pace == 0).to eq(true)
#   end
# end
