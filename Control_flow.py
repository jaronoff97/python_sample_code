secret_number = 27
lower_bound = 0
upper_bound = 100
their_number = -100


def guessing_game(number):
    if number <= lower_bound or number >= upper_bound:
        print("Out of bounds!")
        return  # stops the method, we could also just say return, but break is a really useful control flow statement
    if number > secret_number:
        print("TOO HIGH!")
    elif number < secret_number:
        print("TOO LOW!")
    elif number == secret_number:
        print("You got it! My number was {0}".format(secret_number))
    else:
        print("This should never happen!")


while their_number is not secret_number:
    their_number = input("Guess a number: ")
    guessing_game(their_number)
