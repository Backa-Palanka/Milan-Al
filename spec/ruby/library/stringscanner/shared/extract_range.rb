describe :extract_range, shared: true do
  it "returns an instance of String when passed a String subclass" do
    cls = Class.new(String)
    sub = cls.new("abc")

    s = StringScanner.new(sub)
    ch = s.send(@method)
    ch.should_not be_kind_of(cls)
    ch.should be_an_instance_of(String)
  end
end
