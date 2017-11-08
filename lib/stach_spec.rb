require "spec_helper"

RSpec.describe Stach do
  let(:renderer) { Stach.new(template, record) }
  let(:render) { renderer.to_s }

  context "when record is empty and the template has interpolation markers" do
    let(:template) { "Hello {{world}}" }
    let(:record) { {} }

    it "returns an un-changed string" do
      expect(render).to eq(template)
    end
  end

  context "when record has data and the template has no interpolation markers" do
    let(:template) { "Hello world" }
    let(:record) { {world: "test"} }

    it "returns an un-changed string" do
      expect(render).to eq(template)
    end
  end

  context "when record has data and template has matching interpolation keys" do
    let(:template) { "Hello {{world}}" }
    let(:record) { {world: "test"} }

    it "returns a changed string" do
      expect(render).to eq("Hello test")
    end
  end

  context "when record has data and template has non-matching interpolation keys" do
    let(:template) { "Hello {{world}} {{x}}" }
    let(:record) { {world: "test"} }

    it "returns a partially changed string" do
      expect(render).to eq("Hello test {{x}}")
    end
  end
end
