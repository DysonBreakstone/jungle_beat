require './lib/node'
require './lib/linked_list'

RSpec.describe LinkedList do

  it "has a head" do

  list = LinkedList.new
  
  expect(list.head).to eq(nil)

  end

  it "has a working append method" do
    list = LinkedList.new
    list.append("doop")

    expect(list.head.data).to eq("doop")
    expect(list.head.next_node).to eq(nil)
  end

  it "counts its elements" do
    list = LinkedList.new
    list.append("doop")

    expect(list.count).to eq(1)
  end

  it "converts its array to a string" do
    list = LinkedList.new
    list.append("doop")
    
    expect(list.to_string).to eq("doop")
  end

  


end

