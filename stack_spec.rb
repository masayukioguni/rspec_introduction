require 'rubygems'
require 'rspec'
require './stack'

describe 'create stack' do
  before :each do
    @stack = Stack.new
  end

  it 'new stack is empty' do
    @stack.empty?.should be_true
  end
end

describe 'stack empty' do
  before :each do
    @stack = Stack.new
  end

  it 'stack is 0' do
    @stack.size.should == 0
  end
  
  it 'pop' do 
    lambda { @stack.pop }.should raise_error(Stack::EmptyError)
  end

  it 'push' do 
    lambda { @stack.push(Object.new) }.should change(@stack, :size).by(1)
  end


end