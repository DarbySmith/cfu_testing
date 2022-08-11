# mermaid_spec.rb
require 'rspec'
# write code in a file named 'mermaid'
require './lib/mermaid'

describe Mermaid do
  it 'is an instance of mermaid' do
    # since a mermaid object is being created from a mermaid class --> write class named Mermaid
    # argument being passed in to mermaid, so the initialize method needs to accept one
    mermaid = Mermaid.new('Sereia')
    expect(mermaid).to be_a Mermaid
  end

  it 'has a name' do
    mermaid = Mermaid.new('Sereia')
    # we need to call the name attribute and get back the string passed in --> we need and attr_reader for the name attribute
    expect(mermaid.name).to eq 'Sereia'
  end

  it 'has an age' do
    mermaid = Mermaid.new('Sereia')
    # the age attribute is a default attribute to '22'
    expect(mermaid.age).to eq 22
  end

  it 'has can get older' do
    mermaid = Mermaid.new('Sereia')
    # the get_older method adds one year to the age attribute for each instance (age + 1) 
    mermaid.get_older
    expect(mermaid.age).to eq 23
  end
end
