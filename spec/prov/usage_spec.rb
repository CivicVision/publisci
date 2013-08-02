require_relative '../../lib/bio-publisci.rb'
include PubliSci::Prov::DSL
include PubliSci::Prov

describe PubliSci::Prov::Usage do

  before(:each) do
    @evaluator = PubliSci::Prov::DSL::Singleton.new
  end

  it "can create simple associations", no_travis: true do
    ent1 = @ev.entity :some_data
    ent2 = @ev.entity :other_data
    ag = @ev.agent :some_guy
    act = @ev.activity :do_things do
      generated :some_data
      associated_with :some_guy
      used do
        entity :other_data
        role :plagirized
      end
    end
    act.used[0].should == ent2
    # @ev.generate_n3["prov:wasAssociatedWith"].size.should > 0
  end

  # it "can specify fields manually" do
  #   a = activity :name, subject: "http://example.org/name"
  #   a.subject.should == "http://example.org/name"
  # end

  # it "can be created with a block" do
  #   e = entity :data
  #   a = activity :ag do
  #     subject "http://things.com/stuff"
  #     generated :data
  #   end
  #   a.is_a?(Activity).should be true
  #   a.subject.should == "http://things.com/stuff"
  # end

  # it "lazy loads other objects" do
  #   a = activity :ag do
  #     subject "http://things.com/stuff"
  #     generated :data
  #   end
  #   e = entity :data

  #   a.generated[0].should == e
  # end

  # it "raises an exception when used does not refer to an entity" do
  #   a = activity :name, used: :some_data
  #   expect {a.used[0]}.to raise_error
  # end

  # it "raises an exception when generated does not refer to an entity" do
  #   a = activity :name, generated: :other_data
  #   expect {a.generated[0]}.to raise_error
  # end

  # it "lazy loads generated relationships" do
  #   a = activity :act, generated: :data
  #   e = entity :data

  #   a.generated[0].should == e
  # end

  # it "lazy loads used relationships" do
  #   a = activity :act, generated: :data, used: :other_data
  #   e = entity :data
  #   f = entity :other_data

  #   a.used[0].should == f
  # end

  # it "lazy loads other objects, so declaration order doesn't usually matter" do
  #   a = activity :name, on_behalf_of: :other
  #   b = activity :other

  #   a.on_behalf_of.should == b
  # end

end