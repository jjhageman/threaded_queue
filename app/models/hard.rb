class Hard < ActiveRecord::Base

  INITIAL_STATE = "initial"
  QUEUED_STATE = "queued"
  PROCESSING_STATE = "processing"
  PROCESSED_STATE = "processed"
  ERROR_STATE = "error"  

  def enqueue
    HardWorker.perform_async(self.id)
    set_status_to_queued
    true
  end

  def set_status_to_queued
    self.update_attribute :state, QUEUED_STATE
  end
end
