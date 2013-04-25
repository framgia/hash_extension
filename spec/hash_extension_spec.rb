require File.expand_path(File.join('./', 'spec_helper.rb'), File.dirname(__FILE__))

describe Hash do
  describe "recursive_fetch method works correctly" do
    let(:hash){{a: {b: {c: :d}}}}
    it %q{fetching recursively with keys :a -> :b -> :c gets value :d} do
      hash.recursive_fetch(:a, :b, :c).should be(:d)
    end
    it %q{fetching recursively with keys :a -> :b -> :d gets value nil} do
      hash.recursive_fetch(:a, :b, :d).should be_nil
    end
    it %q{fetching recursively with keys :a -> :b -> :c and set default value :e gets value :e} do
      hash.recursive_fetch(:a, :b, :c, default: :e).should be(:d)
    end
    it %q{fetching recursively with keys :a -> :b -> :d and set default value :e gets value :e} do
      hash.recursive_fetch(:a, :b, :d, default: :e).should be(:e)
    end
  end
  describe "update_counter method works correctly" do
    let(:hash){{a: 1}}
    it %q{update key :a} do
      hash.update_counter!(:a)
      hash.should eq({a: 2})
    end
    it %q{update key :a with addition:3} do
      hash.update_counter!(:a, 3)
      hash.should eq({a: 4})
    end
    it %q{update key :a with addition:-2} do
      hash.update_counter!(:a, -2)
      hash.should eq({a: -1})
    end
    it %q{update key :b} do
      hash.update_counter!(:b)
      hash.should eq({a: 1, b: 1})
    end
    it %q{update key :b with addition:3} do
      hash.update_counter!(:b, 3)
      hash.should eq({a: 1, b: 3})
    end
    it %q{update key :b with addition:-2} do
      hash.update_counter!(:b, -2)
      hash.should eq({a: 1, b: -2})
    end
  end
end
