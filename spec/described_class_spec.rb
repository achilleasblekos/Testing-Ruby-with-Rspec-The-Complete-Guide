class King
    attr_reader :name
    def initialize(name)
        @name = name
    end
end

RSpec.describe King do
    subject { described_class.new("Achilleas") } 
    let(:louis) { described_class.new("Louis") } 

    it "represents a great person" do
        expect(subject.name).to eq("Achilleas") 
        expect(louis.name).to eq("Louis")
    end
    
end

