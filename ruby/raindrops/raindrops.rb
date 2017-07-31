class Raindrops
  WORD = {3 => 'Pling', 5 => 'Plang', 7 => 'Plong'}

  def self.convert(count)
    message = ''

    WORD.each do |(num, word)|
      message << word if count % num == 0
    end

    message.empty? ? count.to_s : message
  end
end

module BookKeeping
	VERSION = 3
end