#
# Plato::DigitalIO class for Raspberry Pi
#
module Plato
  class DigitalIO < GPIO
    def read
      File.open("/sys/class/gpio/gpio#{@pin}/direction", "w") do |io|
        io.write "in"
      end
      File.open("/sys/class/gpio/gpio#{@pin}/value", "r") do |io|
        io.read
      end
    end

    def write(v)
      File.open("/sys/class/gpio/gpio#{@pin}/direction", "w") do |io|
        io.write "out"
      end
      File.open("/sys/class/gpio/gpio#{@pin}/value", "w") do |io|
        io.write v
      end
    end
  end
end
