require 'pry'
class Alfabeto
attr_accessor :latino, :cirilico

  def initialize(latino, cirilico)
    @latino = latino
    @cirilico = cirilico
  end

end


class Translation

attr_accessor :alfabeto

  def initialize
    @latino = %w(ñ ch ll rr qu a b ce ci c d e f ge gi gu g h i j k l m n o p q r s t u v w x y y zz z)
    @cirilico = ['н', 'ч', 'ж', 'р', 'к', 'a', 'б', 'сэ', 'си', 'к', 'д', 'э', 'ф', 'хэ', 'хи', 'г', 'г', "\s", 'и', 'х', 'к', 'л', 'м', 'н', 'о', 'п', 'к', 'р', 'с', 'т', 'у', 'в', 'у', 'ц', 'и', 'ж', 'ц', 'з']
    @alfa = []
    translate
    printer
  end

  def translate
    @latino.each_with_index do |x, i|
        @alfa << Alfabeto.new(@latino[i], @cirilico[i])
    end
  end

  def printer
    puts "This is a letter in the cirilic alphabet: #{@alfa[1].cirilico}"
    puts "This would be the counterpart from the latin alphabet: #{@alfa[1].latino}"
  end
end

Translation.new
