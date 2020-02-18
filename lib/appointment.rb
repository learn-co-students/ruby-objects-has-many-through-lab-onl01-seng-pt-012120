class Appointment 
  attr_accessor :date, :patient, :doctor
  
  def initialize(date, patient, doctor)
    @date = date
    @patient = patient
    @doctor = doctor
    @@all << self 
  end
  
  @@all = []
  
  def self.all 
    @@all 
  end
end