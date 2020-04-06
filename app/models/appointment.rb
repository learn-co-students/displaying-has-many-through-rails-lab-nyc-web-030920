class Appointment < ApplicationRecord
  belongs_to :doctor
  belongs_to :patient

  #do i need a setter for this case really? or just the getter because i just want to link to it not create one. though perhaps i would later.
  # def patient_name=(name)
  #   self.patient = Patient.find_or_create_by(name: name)
  # end

  def patient_name
    self.patient.try(:name)
  end

  def doctor_name 
    self.doctor.try(:name)
  end

  def formatted_datetime
    self.appointment_datetime.strftime("%B %d, %Y at %k:%M")
  end
  # if they ask for the you to iterate through the join table on another table's page you should make a getter method so you can do 
  # @instance.joiner.each do |j|
  # j.instance_attribute
  #same as @instance.joiners.first.patient.name #this is not dynamic because of the first. so to make it dynamic you make the patient_name getter
end
