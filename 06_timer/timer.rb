class Timer
  def initialize
  	@seconds = 0
  end

  def seconds
  	@seconds
  end

  def seconds=value
  	@seconds = value.to_i
  end

  def time_string
  	h = (@seconds/3600)
  	m = (@seconds%3600)/60
  	s = (@seconds%3600)%60
  	"#{self.padded(h)}:#{self.padded(m)}:#{self.padded(s)}"
  end

  def padded value
  	value = value.to_s
  	'0'*(2-value.length)+value
  end

end
