require_relative "./spec_helper"

describe "Detention" do

  before(:each) do
    @test = Detention.new
  end

  it "can create instances of the detention class" do
    expect(@test).to be_an_instance_of(Detention)
  end

  it "has a location" do
    @test.location = "Room 301"
    expect(@test.location).to eq("Room 301")
  end

  it "has a time" do
    @test.time = "3:00 PM"
    expect(@test.time).to eq("3:00 PM")
  end

  it "has a grumpy teacher" do
    @test.grumpy_teacher = "John Schmidt"
    expect(@test.grumpy_teacher).to eq("John Schmidt")
  end

  it "initializes with an activity of 'collective punishment'" do
    expect(@test.activity).to eq("collective punishment")
  end

  it "has no students when it starts" do
    expect(@test.students).to eq([])
  end

  it "can add students" do
    @test.add_student("Rebecca")
    expect(@test.students).to include("Rebecca")
  end

  it "Lists the students currently in detention" do
    @test.add_student("Tom")
    @test.add_student("Fred")
    @test.add_student("Amanda")
    @test.add_student("Allison")
    expect(@test.students).to eq(["Tom", "Fred", "Amanda", "Allison"])
  end

  it "can remove students" do
    @test.add_student("Mary")
    @test.add_student("Jose")
    @test.remove_student("Mary")
    expect(@test.students).not_to include("Mary")
    expect(@test.students).to include("Jose")
  end



end
