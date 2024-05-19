init() # Call the init function to start the game

def init()
    puts("Hello")
    $stdout.flush
    puts("In this game, you are flying a spaceship, and you have to make desitions.")
    $stdout.flush
    puts("Would you like to play? (y/n)")
    $stdout.flush


    input1 = gets.chomp

    if input1 == "y"
      puts("Starting game")
      $stdout.flush
      puts("Enter your age")
      $stdout.flush
      input2 = gets.to_i
      if input2 < 18
         puts("You are not old enough")
      else
         puts("What is your name?")
         $stdout.flush
         name = gets.chomp
         puts("Hello " + name)
         $stdout.flush
         game(name, age)
      end
    else
      puts("bye")
    end
end

def game(name, age)
    puts("You are flying a spaceship and you see an asteroid field.")
    $stdout.flush
    puts("Do you want to go through the asteroid field? (y/n)")
    $stdout.flush
    input3 = gets.chomp
    if input3 == "y"
        puts("You went through the asteroid field and you died.")
    else
        puts("You went around the asteroid field and you survived.")
        $stdout.flush
        puts("You see a planet in the distance.")
        $stdout.flush
        puts("Do you want to go to the planet? (y/n)")
        $stdout.flush
        planet = gets.chomp
        if planet == "y"
            puts("You landed on the planet and you found a treasure.")
            continued1()
        else
            puts("You decided not to go to the planet and you continued flying.")
            continued1()
        end
    end
end


def continued1()
    puts("You see a black hole in the distance.")
    $stdout.flush
    puts("Do you want to go to the black hole? (y/n)")
    $stdout.flush
    blackhole = gets.chomp
    if blackhole == "y"
        puts("You went to the black hole and you died.")
    else
        puts("You decided not to go to the black hole and you continued flying.")
        $stdout.flush
        puts("You see a wormhole in the distance.")
        $stdout.flush
        puts("Do you want to go to the wormhole? (y/n)")
        $stdout.flush
        wormhole = gets.chomp
        if wormhole == "y"
            puts("You went to the wormhole and you traveled to another galaxy.")
            continued2()
        else
            puts("You decided not to go to the wormhole and you continued flying.")
            continued2()
        end
    end
end

def continued2()
    puts("You see a space station in the distance.")
    $stdout.flush
    puts("Do you want to go to the space station? (y/n)")
    $stdout.flush
    spacestation = gets.chomp
    if spacestation == "y"
        puts("You went to the space station and you found a new spaceship.")
        $stdout.flush
        puts("Do you want to fly the new spaceship? (y/n)")
        $stdout.flush
        newship = gets.chomp
        if newship == "y"
          puts("You took the new spaceship, and went so fast that you joined an intergalactic space chase.")
          chase()
        else
          puts("You decided not to fly the new spaceship and you continued flying.")
          continued3()
        end
    else
        puts("You decided not to go to the space station and you continued flying.")
        continued3()
    end
end


def continued3()
    puts("You see a comet in the distance.")
    $stdout.flush
    puts("Do you want to go to the comet? (y/n)")
    $stdout.flush
    comet = gets.chomp
    if comet == "y"
     puts("You flew too close to the comet and you lost control of your ship.")
     $stdout.flush
     puts("You can either eject and hope for the best, or try to regain control of your ship.")
        $stdout.flush
        puts("Do you want to eject? (y/n)")
        $stdout.flush
        eject = gets.chomp
        if eject == "y"
            puts("You ejected and landed on the comet.")
            $stdout.flush
            puts("You found a spaceship on the comet and you flew back to earth.")
            $stdout.flush
            puts("You won the game!")
        else
            puts("You tried to regain control of your ship, but you crashed into the comet.")
            $stdout.flush
            puts("You died.")
        end
     else
     puts("Suddenly, you hear a distress signal.")
     $stdout.flush
     puts("The next thing you know, you in the middle of a space chase, straight out of you favorite movies!")
     chase()
end

def chase()
    #space chase storyline here
    puts("")
end
