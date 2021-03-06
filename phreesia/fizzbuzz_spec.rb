require_relative "fizzbuzz_impl"
Dir["./printers/*.rb"].each { |file| require file }

RSpec.describe "fizzbuzz" do
end

RSpec.describe "max_validator" do
  it "returns an Integer matching input" do
    expect(max_validator('1')).to be(1)
  end
end

RSpec.describe "fizz_validator" do
  let(:printer) { FizzBuzzPrinter.new }

  it "returns a String matching input" do
    expect(printer.fizz_validator('fizz')).to eq('fizz')
  end

  it "returns a String matching input" do
    expect(printer.fizz_validator('foo')).to eq('foo')
  end

  it "returns a default on null input" do
    expect(printer.fizz_validator(nil)).to eq('fizz')
  end

  it "returns a default on empty input" do
    expect(printer.fizz_validator("")).to eq('fizz')
  end

end
