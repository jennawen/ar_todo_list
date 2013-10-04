require_relative '../../config/application'

class Task < ActiveRecord::Base
  def to_s
    "#{self.id}. #{self.description} #{self.completed ? ['X'] : [ ]}"
  end
end
