require File.join(File.dirname(__FILE__), "../lib/lazy_initializer")

describe LazyInitializer do
  let(:noargs) {  LazyInitializer.new }
  let(:simple) { LazyInitializer.new :a => 1 }

  it "initializes" do
    noargs.should_not eql(nil)
    simple.should_not eql(nil)
  end

  it "defines attribute reader" do
    simple.a.should eql(1)
  end

  it "defines attribute writer" do
    simple.a = "a"
    simple.a.should eql("a") 
  end

  it "sets instance variable" do
    simple.a = "a"
    simple.instance_eval { @a }.should eql("a") 
  end
end
