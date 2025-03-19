describe :integer_rounding_positive_precision, shared: true do
  it "returns self if not passed a precision" do
    [2, -4, 10**70, -10**100].each do |v|
      v.send(@method).should eql(v)
    end
  end

  it "returns self if passed a precision of zero" do
    [2, -4, 10**70, -10**100].each do |v|
      v.send(@method, 0).should eql(v)
    end
  end

  it "returns itself if passed a positive precision" do
    [2, -4, 10**70, -10**100].each do |v|
      v.send(@method, 42).should eql(v)
    end
  end
end
