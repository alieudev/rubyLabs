require 'pry'

class Role < ActiveRecord::Base
    has_many :auditions

    def actors
        self.auditions.map do |t|
            t.actor
        end
    end

    def locations
        self.auditions.map do |t|
            t.location
        end 
    end

    def lead
        hired_status = self.auditions.find_by(:hired => true)
        if hired_status
            hired_status
        else
            "no actor has been hired for this role"
        end
    end

    def understudy
        second_hired = self.auditions.where(:hired => true).second
        if second_hired
            second_hired
        else
            'no actor has been hired for understudy for this role'
        end

    end
    binding.pry
endclass Teacher < User

  KNOWLEDGE = ["a String is a type of data in Ruby", "programming is hard, but it's worth it", "javascript async web request", "Ruby method call definition", "object oriented dog cat class instance", "class method class variable instance method instance variable", "programming computers hacking learning terminal", "bash Ruby rvm update certs"]

  def teach 
    KNOWLEDGE.sample
  end 
  
end

