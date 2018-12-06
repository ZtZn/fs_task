class Sequence
  def initialize(first_element: '1')
    @sequence = [first_element]
  end

  def print_pretty
    @sequence.each.with_index(1) do |element, i|
      puts "#{i}. #{element}"
    end
  end

  def create_sequence(step)
    step = step - 1
    tmp_element = @sequence.last
    step.times do
      tmp_element = next_line(tmp_element)
      @sequence.push(tmp_element)
    end
    @sequence
  end

  def last_line
    @sequence.last.to_s
  end

  private

  def next_line(line)
    array = line.scan(/((\w)\2*)/).map(&:first)
    array.map { |element| "#{element.strip.length}#{element.chars.first}" }.join
  end
end
