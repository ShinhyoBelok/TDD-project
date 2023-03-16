require_relative '../solver'

describe Solver do
  solver = Solver.new

  context "When factorial method gets called" do
    it "should return the factorial of the number when n is positive" do
      expect(solver.factorial(6)).to eq 720
    end

    it "should return 1 when n is 0" do
      expect(solver.factorial(0)).to eq 1
    end

    it "Should return raise an error message when n is negative" do
      expect{ solver.factorial(-3) }.to raise_error("Please input a positive number", StandardError)
    end
  end

  context "When fizzbuzz method gets called" do
    it "N is divisible by 3, return fizz " do
      expect(solver.fizzbuzz(9)).to eq 'fizz'
    end

    it "N is divisible by 5, return buzz " do
      expect(solver.fizzbuzz(35)).to eq 'buzz'
    end

    it "N is divisible by 3 and 5, return fizzbuzz" do
      expect(solver.fizzbuzz(150)).to eq 'fizzbuzz'
    end

    it "Any other case, return N as a string" do
      expect(solver.fizzbuzz(24)).to eq '24'
    end
  end
  
  context "when reverse method get reversed string" do
    it "reverse return reversed string" do
      expect(solver.reverse('hello')).to eq 'olleh'
      expect(solver.reverse('hello world')).to eq 'dlrow olleh'
    end
  end
end
