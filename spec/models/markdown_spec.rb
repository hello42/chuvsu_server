require "spec_helper"

describe "check convert markdown" do
  it "check get geo by address" do
    source = "# Hello * a * b hello"
    result = Markdown.convert source
    expect(result).to eq "<h1>Hello * a * b hello</h1>\n"
  end
end
