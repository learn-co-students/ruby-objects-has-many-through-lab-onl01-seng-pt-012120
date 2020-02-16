class Patient
  @@all = []
  attr_accessor(:name)
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def self.all()
    return @@all
  end
  
  def new_appointment(doctor, date)
    return Appointment.new(date, self, doctor)
  end
  
  def appointments()
    return Appointment.all.select{|app| app.patient == self}
  end
  
  def doctors()
    return self.appointments.collect{|app| app.doctor}
  end
end