require_relative './lib/sequence'

  p 'Введи сколько строк нужно сгенерировать: '
  step = gets.chomp.to_i
  unless step.zero?
    sequence = Sequence.new
    sequence.create_sequence(step)
    sequence.print_pretty
  end