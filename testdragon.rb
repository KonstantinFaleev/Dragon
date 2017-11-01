class Dragon

  def initialize (name)
    @name = name
    @mealInStomach = 0
  end

  def feed
    if @mealInStomach == 0
      @mealInStomach += 1
      puts "Это было вкусно, но я хочу добавки"
    elsif @mealInStomach == 1
      @mealInStomach += 1
      puts "Это было вкусно и я сыт"
    elsif @mealInStomach == 2
      @mealInStomach += 1
      puts "Я объелся и не могу больше есть"
    else
      puts "БРРРРРРР! и желудок пуст"
      @mealInStomach = 0
    end
  end

  def walk
    if @mealInStomach > 0
      puts "Хорошая погода сегодня, наступила осень!"
      @mealInStomach -= 1
    else
      puts "Я слишком голоден "
    end
  end

end

puts "Как зовут вашего дракона?"
name = gets.chomp
your_dragon = Dragon.new(name)

loop do
  puts "Что вы хотите сделать с #{name.capitalize}? выберете 'feed' или 'walk' или 'exit'"
  action = gets.chomp

  case action
    when "feed"
      your_dragon.feed
    when "walk"
      your_dragon.walk
  end

  break if action == "exit"

end
  puts "Ваш дракон #{name.capitalize} ушел в лес и больше вы его не увидите"