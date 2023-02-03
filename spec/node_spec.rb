require './lib/node'

RSpec.describe Node do

  it "receives a string" do

  node = Node.new("Plop")
  
  expect(node.data).to eq("Plop")

  end

  it "points to a non-existent next node" do

  node = Node.new("Plop")

  expect(node.next_node).to eq(nil)
  end

end