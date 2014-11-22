require "ully"

describe Ully::Client do

    let(:client) { Ully::Client.new("") }

    describe "#stats" do
        it { expect(client.stats().size).to eq(7) }
    end

    describe "#stats" do
        it { expect(client.status().size).to eq(2) }
    end
end