# A simple two player math game made with ruby!


# Planning

=========================

## Nouns for Classes

### Player
  initialize
    @lives = 3

  method1
    @lives - 1

  method2 (@lives)
    if @lives == 0
      true


### Question

  generate num1 and num2
  answer = num1 + num2

  initialize with
    @num1 = num1
    @num2 = num2
    @answer = answer

  method1(num1, num2)
    return num1 and num 2 as question

  method2?(answer, user_answer)
    checks user_answer against answer
    return true or false

  method3

### Round

  initialize
    @current_round = 1

  method1
    current_round += 1

  method2(current_round)
    if current_round / 2 == 0
      true
    else


### Game

  initialize
    @player1 = new.player
    @player2 = new.player



  LOOP --EACH LOOP IS A ROUND--

    quest_num ++
    append quest_numb to the question name

    question1 = new.question
    question1.method1
    --player_answer-- .chomp (make sure it is an integer)
    if question1.method2(player_answer) ** ==true **





