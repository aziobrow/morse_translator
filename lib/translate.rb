class Translate

  def eng_to_morse(string)
    alphabet = {'a'=>'.-','b' =>'-...','c'=>'-.-.','d'=>'-..','e'=>'.','f'=>'..-.',
      'g'=>'--.','h'=>'....','i'=>'..','j'=>'.---','k'=>'-.-','l'=>'.-..','m'=>'--',
      'n'=>'-.','o'=>'---','p'=>'.--.','q'=>'--.-','r'=>'.-.','s'=>'...','t'=>'-',
      'u'=>'..-','v'=>'...-','w'=>'.--','x'=>'-..-','y'=>'-.--','z'=>'--..'}

    characters = {}
    string.chars.map do |char|
      characters = alphabet.select {|key| key.include? char}
      morse = characters.values.to_a
      morse_only = morse.join(',')
      complete_translation = morse_only.map {|string| morse_only[0] << string}
    end
  end

end

#this is really bad and I'm sorry... sigh.
