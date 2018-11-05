class Student < ActiveRecord::Base
  def to_s
    self.first_name + " " + self.last_name
  end

  def status
    self.active == true  ? "This student is currently active." : "This student is currently inactive."

  end

  def status_change
    self.active == true ? self.active = false : self.active = true
  end

end