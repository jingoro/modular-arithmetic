require 'rubygems'
require 'rspec'

require File.expand_path '../../lib/modular_arithmetic', __FILE__

describe ModularArithmetic do

  include ModularArithmetic

  describe 'gcd' do

    it 'should compute the trivial cases' do
      gcd(0, 0).should == 0
      gcd(1, 1).should == 1
      gcd(-1, -1).should == 1
      gcd(0, 1).should == 1
      gcd(0, -1).should == 1
      gcd(1, 0).should == 1
      gcd(-1, 0).should == 1
      gcd(1, -1).should == 1
      gcd(-1, 1).should == 1
    end

    it 'should compute relatively prime numbers' do
      gcd(3, 5).should == 1
      gcd(3, -5).should == 1
      gcd(-3, -5).should == 1
      gcd(-3, -5).should == 1
      gcd(81, 49).should == 1
      gcd(81, -49).should == 1
      gcd(-81, 49).should == 1
      gcd(-81, -49).should == 1
      gcd(100, 169).should == 1
      gcd(100, -169).should == 1
      gcd(-100, 169).should == 1
      gcd(-100, -169).should == 1
    end

    it 'should compute composite numbers in any order and sign' do
      gcd(12, 18).should == 6
      gcd(12, -18).should == 6
      gcd(-12, 18).should == 6
      gcd(-12, -18).should == 6
      gcd(18, 12).should == 6
      gcd(18, -12).should == 6
      gcd(-18, 12).should == 6
      gcd(-18, -12).should == 6
    end

  end

  describe 'gcdext' do

    it 'should handle the trivial cases' do
      gcdext(1, 1).should == [1, 0, 1]
      gcdext(0, 0).should == [0, 1, 0]
    end

    it 'should handle negative trivial cases' do
      gcdext(1, -1).should == [1, 0, -1]
      gcdext(-1, -1).should == [1, 0, -1]
      gcdext(-1, -1).should == [1, 0, -1]
    end

    it 'should handle trivial cases with one zero' do
      gcdext(1, 0).should == [1, 1, 0]
      gcdext(0, 1).should == [1, 0, 1]
      gcdext(-1, 0).should == [1, -1, 0]
      gcdext(0, -1).should == [1, 0, -1]
    end

    it 'should handle primes and 1' do
      gcdext(17, 1).should == [1, 0, 1]
      gcdext(1, 17).should == [1, 1, 0]
    end

    it 'should handle relatively primes' do
      gcdext(3, 5).should == [1, 2, -1]
      gcdext(5, 3).should == [1, -1, 2]
      gcdext(16, 49).should == [1, -3, 1]
      gcdext(49, 16).should == [1, 1, -3]
    end

    it 'should handle more complicated sets' do
      gcdext(18, 12).should == [6, 1, -1]
      gcdext(12, 18).should == [6, -1, 1]
      gcdext(114, 48).should == [6, 3, -7]
      gcdext(48, 114).should == [6, -7, 3]
      gcdext(9810, 7047).should == [9, -278, 387]
      gcdext(7047, 9810).should == [9, 387, -278]
      gcdext(-9810, 7047).should == [9, 278, 387]
      gcdext(-7047, 9810).should == [9, -387, -278]
    end

  end

  describe 'powmod' do

    it 'should handle the trivial cases' do
      powmod(1, 1, 2).should == 1
      powmod(1, 1, 10).should == 1
      powmod(1, 2, 10).should == 1
      powmod(2, 2, 10).should == 4
      powmod(2, 2, 3).should == 1
    end

    it 'should handle some other numbers' do
      powmod(3, 4, 5).should == 1
    end

    it 'should handle inverse modula' do
      powmod(2, -1, 3).should == 2
      powmod(2, -2, 3).should == 1
      powmod(2, -3, 3).should == 2
      powmod(2, -1, 5).should == 3
      powmod(2, -2, 5).should == 4
      powmod(2, -3, 5).should == 2
    end

  end

end
