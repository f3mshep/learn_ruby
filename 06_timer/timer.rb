class Timer
  #write your code here
  def initialize
    seconds
  end

    def time_string
      hours = padded(0)
      minutes = padded(0)
      secondz = 0
      if @seconds <= 60
        secondz = padded(@seconds)
      elsif @seconds > 60 && @seconds < 3600
        secondz = padded(@seconds % 60)
        minutes = padded(@seconds / 60)
      else
        hours = padded(@seconds / 3600)
        secondz = @seconds % 3600
        minutes =  padded(secondz / 60)
        secondz = secondz % 60
      end
      return "#{hours}:#{minutes}:#{secondz}"
    end

    def padded(int)
      if int == 0
        return '00'
      elsif int < 10
        return '0' + int.to_s
      else
        return int.to_s
      end
    end

    def seconds=(value)
      @seconds = value
    end

    def seconds
      @seconds = 0
    end
end
