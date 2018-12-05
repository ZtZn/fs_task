class Sequence
  def initialize(step: 5, first_element: '1')
    @first_element = first_element
    @step = step - 1
    @sequence = create_sequence
  end

  def print_pretty
    @sequence.each.with_index(1) do |element, i|
      puts "#{i}. #{element}"
    end
  end

  private

  def create_sequence
    @sequence_arr = [@first_element]
    tmp_element = @first_element
    @step.times do
      tmp_element = next_line(tmp_element)
      @sequence_arr.push(tmp_element)
    end
    @sequence_arr
  end

  def next_line(line)
    array = line.scan(/((\w)\2*)/).map(&:first)
    array.map { |element| "#{element.strip.length}#{element.chars.first}" }.join
  end
end
