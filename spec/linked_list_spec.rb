require './lib/node'
require './lib/linked_list'

RSpec.describe 'iteration_1_part_2' do

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


RSpec.describe 'iteration_1_part_3' do

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

  it "can append a second thing" do
    list = LinkedList.new
    list.append("doop")
    list.append("deep")

    expect(list.head.next_node.data).to eq("deep")
    expect(list.head.next_node.next_node).to eq(nil)
  end

  it "can count if length > 1" do
    list = LinkedList.new
    list.append("doop")
    list.append("deep")

    expect(list.count).to eq(2)
  end

  it "can to_string if length > 1" do
    list = LinkedList.new
    list.append("doop")
    list.append("deep")

    expect(list.to_string).to eq("doop deep")

  end



end



