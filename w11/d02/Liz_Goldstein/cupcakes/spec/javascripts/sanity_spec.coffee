describe "Sanity Check", ->
  it "demonstrates a successful test", ->
    expect(1).toEqual 1

describe "Testing spec", ->
  it "demonstrates that I can write a test here", ->
    expect(1 + 1).toEqual 2

describe "is the test finding anything else?", ->
  it "demonstrates that we can find the cupcakes", ->
    expect(test = Cupcakeapp.Models.Cupcake).not.toBeUndefined();

