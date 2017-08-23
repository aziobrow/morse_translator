require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/translate'

class TranslateTest < Minitest::Test

  def test_it_exists
    translator = Translate.new
    assert_instance_of Translate, translator
  end

  def test_it_translates_morse_into_string
    translator = Translate.new
    assert_equal '"......-...-..--- .-----.-..-..-.."', translator.eng_to_morse('hello world')
  end
end
