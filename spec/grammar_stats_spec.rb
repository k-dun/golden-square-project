require 'grammar_stats'

RSpec.describe GrammarStats do
  describe '#check' do
    context 'returns true if conditions are met' do
      it 'returns true' do
        grammar_stats = GrammarStats.new
        expect(grammar_stats.check("Konrad.")).to eq true
      end

      it 'returns true' do
        grammar_stats = GrammarStats.new
        expect(grammar_stats.check("Makers are an amazing bootcamp!")).to eq true
      end
    end

    context 'returns false when conditions are not met' do
      it 'returns false' do
        grammar_stats = GrammarStats.new
        expect(grammar_stats.check("konrad.")).to eq false
      end

      it 'returns false' do
        grammar_stats = GrammarStats.new
        expect(grammar_stats.check("Konrad")).to eq false
      end

      it 'returns false' do
        grammar_stats = GrammarStats.new
        expect(grammar_stats.check("makers are an amazing bootcamp")).to eq false
      end
    end

    context 'raises an error if wrong data type' do
      it 'wrong data type' do
        grammar_stats = GrammarStats.new
        expect { grammar_stats.check(6) }.to raise_error "Wrong data type."
      end
    end
  end

  describe "#percentage_good" do
    it 'returns percentage of texts that meet the requirements' do
      grammar_stats = GrammarStats.new
      grammar_stats.check("Konrad.")
      expect(grammar_stats.percentage_good).to eq 100
    end

    it 'returns percentage of texts that meet the requirements' do
      grammar_stats = GrammarStats.new
      grammar_stats.check("Konrad.")
      grammar_stats.check("Konrad")
      expect(grammar_stats.percentage_good).to eq 50
    end

    it 'returns percentage of texts that meet the requirements' do
      grammar_stats = GrammarStats.new
      grammar_stats.check("Konrad")
      expect(grammar_stats.percentage_good).to eq 0
    end

    it 'returns percentage of texts that meet the requirements' do
      grammar_stats = GrammarStats.new
      grammar_stats.check("Konrad.")
      grammar_stats.check("really.")
      grammar_stats.check("Rules.")
      grammar_stats.check("The")
      grammar_stats.check("Makers.")
      expect(grammar_stats.percentage_good).to eq 60
    end 
  end
end