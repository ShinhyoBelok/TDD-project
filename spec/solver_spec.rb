describe Solver do
  content "When factorial method gets called" do
    it "Should return the factorial of the input number" do
      solver = Solver.new
      expect(solver.factorial(6)).to eq 720
      expect(solver.factorial(0)).to eq 1
      expect(solver.factorial(-3)).to raise_error("Please input a positive number")
    end
  end
end