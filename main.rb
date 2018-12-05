require_relative './lib/sequence'

  p 'Введи сколько строк нужно сгенерить: '
  step = gets.chomp.to_i
  unless step.zero?
    sequence = Sequence.new(step: step) 
    sequence.print_pretty
  end