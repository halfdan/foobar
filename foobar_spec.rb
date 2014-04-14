# foobar_spec.rb
describe "foobar" do
	before do
		@f = File.open("foobar")
	end

  	it "is a file" do
		@f.should be_an_instance_of File
	end

	it "has two lines" do
		@f.lineno.should == 0
		@f.each_line {}
		@f.lineno.should == 2
	end
end
