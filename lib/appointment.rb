class Appointment
  attr_accessor :name
  attr_reader :doctor, :patient
  @@all = []
  
  def initialize(date, patient, doctor)
    @date = date
    @patient = patient
    @name = name
    @@all << self
  end
  
  def self.all
    @@all
  end
end