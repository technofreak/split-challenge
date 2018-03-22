#require 'spec_helper'
require_relative '../numbers_operations'
include NumbersOperations

describe "numbers and operations" do

    context "calling numbers without args" do
        it "one returns the number 1" do
            expect(one).to eq 1
        end
    end

    context "calling full operations" do
        it "adds four plus nine to return 13" do
            expect(four(plus(nine))).to eq 13
        end

        it "subtracts three from eight to return 5" do
            expect(eight(minus(three))).to eq 5
        end

        it "multiplies seven by five to return 35" do
            expect(seven(times(five))).to eq 35
        end

        it "divides six by two to return 3" do
            expect(six(divided_by(two))).to eq 3
        end
    end

    context "subtracting bigger from smaller" do
        it "subtracts eight from five to return -3" do
            expect(five(minus(eight))).to eq -3
        end
    end
end

