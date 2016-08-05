class HardWorker
  include Sidekiq::Worker
  def perform(hard_id)

    # TODO: Update hard state to processing

    hard = Hard.find(hard_id)
    HardService.new(hard).process

  end
end
