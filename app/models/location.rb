class Location < Orchestrate::Rails::Model

  def comments
    self.events('comments')
  end
end
