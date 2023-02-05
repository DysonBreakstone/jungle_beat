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

RSpec describe "iteration 3.2" do

  

end
