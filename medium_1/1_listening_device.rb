system 'clear'
require 'pry'

class Device
  def initialize
    @recordings = []
  end

  def record(recording)
    @recordings << recording
  end

  def listen
     recording = yield if block_given?
     record(recording) if recording
  end

  def play
    @recordings.each { |recording| puts recording }
  end
end

listener = Device.new
listener.listen { "Hello World!" }
listener.listen
listener.play # Outputs "Hello World!"
puts
