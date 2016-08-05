class HardService

  attr_reader :hard

  def initialize(hard)
    @hard = hard
  end

  def process
    sleep(4)
    @hard.update_attribute :state, Hard::PROCESSED_STATE
    puts "processed #{hard.id}: #{hard.state}"
  end
end
