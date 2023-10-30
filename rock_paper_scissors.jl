function play_rock_paper_scissors()
    actions = ["🪨", "📃", "✂️"]
    computer_action = rand(actions)

    user_input = Base.prompt("Choose 🪨, 📃, or ✂️?")

    print("Rock...")
    sleep(1)

    print("Paper...")
    sleep(1)

    print("Scissors... ")
    sleep(1)

    print("GO\n")

    if user_input == "rock"
        human_action = "🪨"
    elseif user_input == "paper"
        human_action = "📃"
    elseif user_input == "scissors"
        human_action = "✂️"
    end

    if computer_action == human_action
        print("It's a tie. Please try again!")
    elseif computer_action == "🪨" && human_action == "✂️"
        print("You lose, the computer won with 🪨, please try again!")
    elseif computer_action == "📃" && human_action == "🪨"
        print("You lose, the computer won with 📃, please try again!")
    elseif computer_action == "✂️" && human_action == "📃"
        print("You lose, the computer won with ✂️, please try again!")
    else
        print("You won! Your action was $human_action, the computer lost with $computer_action, nice!")
    end
end

play_rock_paper_scissors()
