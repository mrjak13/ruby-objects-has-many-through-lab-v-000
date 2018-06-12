class Doctor
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def new_appointment(date, patient)
    date = Appointment.new(name, patient, self)
  end

  def appointments
    Appointment.all.select {|app| app.doctor == self}
  end

  def patients

  end

end
