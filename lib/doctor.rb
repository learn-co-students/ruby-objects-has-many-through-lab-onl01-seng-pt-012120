class Doctor 
  attr_accessor :name 
  
  def initialize(name)
    @name = name 
    @@all << self
  end
  
  @@all = []
  
  def self.all
    @@all
  end
  
  def new_appointment(patient, date)
    a = Appointment.new(date, patient, self)
  end
  
  def appointments
    a = Appointment.all.select {|x| x.doctor = self}
  end
  
  def patients
    a = self.appointments
    a.collect do |x|
      x.patient
    end
  end
  
end
    