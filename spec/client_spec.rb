require "ully"

describe Ully::Client do

    let(:client) { Ully::Client.new("") }

    describe "#stats" do
        it { expect(client.stats).to have(7).item }
    end

    describe "#stats" do
        it { expect(client.status).to have(2).item }
    end
end