class Patient
  attr_reader :name
  @@all = []

  def initialize(name)
    @name = name

    @@all << self
  end

  def self.all
    @@all
  end

  def new_appointment(doctor, date)
    Appointment.new(date, self, doctor)
  end

  def appointments
    Appointment.all.select { |appoint| appoint.patient == self }
  end
  
  def doctors
    self.appointments.collect { |appoint| appoint.doctor }
  end
end