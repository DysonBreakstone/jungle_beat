require './lib/node'
require './lib/linked_list'
require './lib/jungle_beat'

RSpec.describe "Iteration 3.1" do

  it "exists" do
    jb = JungleBeat.new
  
    expect(jb).to be_instance_of(JungleBeat)
    expect(jb.list != nil).to eq(true)
    expect(jb.list.head).to eq(nil)
  end

  it "can append multiple strings at once" do
    jb = JungleBeat.new
    jb.append("deep doo ditt")
    
    expect(jb.list.head.data).to eq("deep")
    expect(jb.list.head.next_node.data).to eq("doo")
  end

  it "can append multiple strings at once repeatedly" do
    jb = JungleBeat.new
    jb.append("deep doo ditt")
    jb.append("woo hoo shu")

    expect(jb.count).to eq(6)
    expect(jb.list.to_string).to eq("deep doo ditt woo hoo shu")
  end

end

RSpec.describe "iteration 3.2" do

  it "checks to make sure to_string method is still working" do
  jb = JungleBeat.new("deep")
  jb.append("dopp doop shop")

  expect(jb.list.to_string).to eq("deep dopp doop shop")
  expect(jb.count).to eq(4)

  end

  it "won't append things that aren't jungle beats" do
  jb = JungleBeat.new("deep")
  jb.append("Mississippi")

  expect(jb.list.to_string).to eq("deep")
  expect(jb.append("mississippi dopp")).to eq(1)
  end

  it "has a working .all method" do
    jb = JungleBeat.new("Mary had a little lamb")

    expect(jb.all).to eq("Mary had a little lamb")
  end

  it "has a working prepend method" do
    jb = JungleBeat.new("Deep Dopp Doop")
    jb.prepend("flip mississippi floop")

    expect(jb.all).to eq("flip floop Deep Dopp Doop")
  end

  it "rejects more words than just mississippi" do
    jb = JungleBeat.new
    jb.prepend("asjdhfuef grippity groppity 34 Harambe quickly boop")

    expect(jb.all).to eq("boop")
  end

  it "has a working beat_cleaner helper method" do
    jb = JungleBeat.new

    expect(jb.beat_cleaner("asjdhfuef grippity groppity 34 Harambe quickly boop").join(" ")).to eq ("boop")
  end

  it "successfully implements new beat_cleaner method into prepend" do
    jb = JungleBeat.new("deep doop")
    jb.prepend("asjdhfuef grippity groppity 34 Harambe quickly boop")

    expect(jb.all).to eq("boop deep doop")
  end
end
