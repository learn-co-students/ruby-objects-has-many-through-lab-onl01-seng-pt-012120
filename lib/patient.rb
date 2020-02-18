class Patient 
  attr_accessor :name 
  
  def initialize(name)
    @name = name 
    @@all << self
  end
  
  @@all = []
  
  def self.all
    @@all
  end
  
  def new_appointment(doctor, date)
    a = Appointment.new(date, self, doctor)
  end
  
  def appointments 
    a = Appointment.all.select {|x| x.patient == self}
  end
  
  def doctors
    a = self.appointments
    a.collect do |x|
      x.doctor
    end
  end
  
end