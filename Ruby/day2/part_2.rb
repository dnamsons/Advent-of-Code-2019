input = (ARGV.empty? ? DATA : ARGF).first.split(',').map(&:to_i).freeze

(0..99).each do |a|
  (0..99).each do |b|
    cloned_input = input.dup
    cloned_input[1] = a
    cloned_input[2] = b

    (0...cloned_input.length).step(4) do |i|
      case cloned_input[i]
      when 1
        cloned_input[cloned_input[i + 3]] = cloned_input[cloned_input[i + 1]] + cloned_input[cloned_input[i + 2]]
      when 2
        cloned_input[cloned_input[i + 3]] = cloned_input[cloned_input[i + 1]] * cloned_input[cloned_input[i + 2]]
      when 99
        break
      end
    end

    p(100 * a + b) if cloned_input[0] == 19690720
  end
end

__END__
1,0,0,3,1,1,2,3,1,3,4,3,1,5,0,3,2,6,1,19,2,19,9,23,1,23,5,27,2,6,27,31,1,31,5,35,1,35,5,39,2,39,6,43,2,43,10,47,1,47,6,51,1,51,6,55,2,55,6,59,1,10,59,63,1,5,63,67,2,10,67,71,1,6,71,75,1,5,75,79,1,10,79,83,2,83,10,87,1,87,9,91,1,91,10,95,2,6,95,99,1,5,99,103,1,103,13,107,1,107,10,111,2,9,111,115,1,115,6,119,2,13,119,123,1,123,6,127,1,5,127,131,2,6,131,135,2,6,135,139,1,139,5,143,1,143,10,147,1,147,2,151,1,151,13,0,99,2,0,14,0
