class Vehicle
    attr_accessor :wheel_size, :wheel_number

    def initialize(wheel_size, number)
        @wheel_size = wheel_size
        @number = number
    end

    def fill_up_tank
        'filling up!'
    end 

    def go
        'vrrrrrrrooom!'
    end 
end
