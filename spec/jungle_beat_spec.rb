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

  xit "can append multiple strings at once" do
    jb = JungleBeat.new
    jb.append("deep too ditt")
    
    expect(jb.list.head.data).to eq("deep")
    expect("jb.list.head.next_node.data").to eq("doo")
  end

  xit "can append multiple strings at once repeatedly" do
    jb = JungleBeat.new
    jb.append("deep too ditt")
    jb.append("woo hoo shu")

    expect(jb.count).to eq(6)
  end

end
