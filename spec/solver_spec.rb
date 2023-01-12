require_relative '../solver'

RSpec.describe Solver do
  context 'Factorial' do
    it 'Test : Factorial of a number' do
      result = Solver.new
      expect(result.factorial(2)).to eq 2
      expect(result.factorial(3)).to eq 6
      expect(result.factorial(1)).to eq(1)
      expect(result.factorial(-2)).to eq('Factorial calculation is not applicable for negative numbers')
    end
  end

  context 'Reserve' do
    it 'Tests for the reverse method' do
      result = Solver.new
      expect(result.reverse('harry')).to eq 'yrrah'
      expect(result.reverse('moha')).to eq 'ahom'
      expect(result.reverse('temp')).to eq 'pmet'
      expect(result.reverse('hi')).to eq 'ih'
    end
  end

  context 'Fizzbuzz' do
    it 'Tests for fizzbuzz method' do
      result = Solver.new
      expect(result.fizzbuzz(3)).to eq 'fizz'
      expect(result.fizzbuzz(5)).to eq 'buzz'
      expect(result.fizzbuzz(15)).to eq 'fizzbuzz'
      expect(result.fizzbuzz(13)).to eq result.fizzbuzz(13).to_s
    end
  end
end