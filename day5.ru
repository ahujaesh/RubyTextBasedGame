@money = 0

def init()
    puts("Hello")
    $stdout.flush()
    puts("In this game, you are a lost astronaut flying a spaceship, and you have to make decisions.")
    $stdout.flush()
    puts("Your goal is to get back to earth")
    $stdout.flush()
    puts("Would you like to play? (y/n)")
    $stdout.flush()

    input1 = gets.chomp

    if input1 == "y"
        puts("Starting game")
        $stdout.flush()
        puts("Enter your age")
        $stdout.flush()
        input2 = gets.to_i
        if input2 < 18
            puts("You are not old enough")
        else
            puts("What is your name?")
            $stdout.flush()
            name = gets.chomp
            puts("Hello " + name)
            $stdout.flush()
            game()
        end
    else
        puts("bye")
    end
end

def game()
    puts("You are flying a spaceship and you see an asteroid field.")
    $stdout.flush()
    puts("Do you want to go through the asteroid field? (y/n)")
    $stdout.flush()
    input3 = gets.chomp
    if input3 == "y"
        puts("You went through the asteroid field and you died.")
        $stdout.flush()
        playAgain()
    else
        puts("You went around the asteroid field and you survived.")
        $stdout.flush()
        puts("You see a planet in the distance.")
        $stdout.flush()
        puts("Do you want to go to the planet? (y/n)")
        $stdout.flush()
        planet = gets.chomp
        if planet == "y"
            puts("You landed on the planet and you found a treasure.")
            $stdout.flush()
            @money += 10
            puts("You now have " + @money.to_s + " Dubloons")
            continued1()
        else
            puts("You decided not to go to the planet and you continued flying.")
            continued1()
        end
    end
end

def continued1()
    puts("You see a black hole in the distance.")
    $stdout.flush()
    puts("Do you want to go to the black hole? (y/n)")
    $stdout.flush()
    blackhole = gets.chomp
    if blackhole == "y"
        puts("You went to the black hole and you died.")
        $stdout.flush()
        playAgain()
    else
        puts("You decided not to go to the black hole and you continued flying.")
        $stdout.flush()
        puts("You see a wormhole in the distance.")
        $stdout.flush()
        puts("Do you want to go to the wormhole? (y/n)")
        $stdout.flush()
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
    $stdout.flush()
    puts("Do you want to go to the space station? (y/n)")
    $stdout.flush()
    spacestation = gets.chomp
    if spacestation == "y"
        puts("You went to the space station and you found a new spaceship.")
        $stdout.flush()
        puts("Do you want to fly the new spaceship? (y/n)")
        $stdout.flush()
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
    $stdout.flush()
    puts("Do you want to go to the comet? (y/n)")
    $stdout.flush()
    comet = gets.chomp
    if comet == "y"
        puts("You flew too close to the comet and you lost control of your ship.")
        $stdout.flush()
        puts("You can either eject and hope for the best, or try to regain control of your ship.")
        $stdout.flush()
        puts("Do you want to eject? (y/n)")
        $stdout.flush()
        eject = gets.chomp
        if eject == "y"
            puts("You ejected and landed on the comet.")
            $stdout.flush()
            puts("You found a mysterious seat on the comet, and you sat in it.")
            $stdout.flush()
            puts("The second you were fully seated, you saw time speed up all around you, and you realized that the comet was heading towards earth!")
            win()
        else
            puts("You tried to regain control of your ship, but you crashed into the comet.")
            $stdout.flush()
            puts("You died.")
            $stdout.flush()
            playAgain()
        end
    else
        puts("Suddenly, you hear a distress signal.")
        $stdout.flush()
        puts("The next thing you know, you in the middle of a space chase, straight out of you favorite movies!")
        chase()
    end
end

def chase()
    # space chase storyline here
    puts("Whoosh! Bang! You have flown right into the middle of an army, chasing after a small red ship.")
    $stdout.flush()
    puts("You can either join the ship in running away, or stay with the army and see what happens (j for join / s for stay)")
    $stdout.flush()
    goodOrEvil = gets.chomp
    if goodOrEvil == "j"
        puts("You fly up to join the rebel spaceship, and the army, thinking that you are their friend, shoots you down, and you die. The end.")
        $stdout.flush()
        playAgain()
    else
        puts("You stay with the army, and right before your eyes, you see the rebel ship get destroyed. As the ship's parts go flying, you see the glint of gold.")
        $stdout.flush()
        puts("Do you grab the money? (y/n)")
        $stdout.flush()
        grabmoney = gets.chomp
        if grabmoney == "y"
            puts("You grab the money")
            $stdout.flush()
            @money += 1
            puts("You now have " + @money.to_s + " Dubloons")
            $stdout.flush()
            continued4()
        else
            puts("You are scared so you don't grab the money")
            $stdout.flush()
            continued4()
        end
    end
end

def continued4()
    puts("hi")
    $stdout.flush()
end

def win()
    puts("You reached earth, so you win!")
    $stdout.flush()
    puts("You had " + @money.to_s + " Dubloons")
end

def playAgain()
    $stdout.flush()
    puts("Do you want to play again? (y/n)")
    $stdout.flush()
    playAgain = gets.chomp
    if playAgain == "y"
        init()
    end
end

init() # Call the init function to start the game
