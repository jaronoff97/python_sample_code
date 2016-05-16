todos = []


def main():
    print("Welcome to your todolist!")
    add_todo()
    print_todos()
    while(True):
        choice = raw_input(
            "If you want to add to your list say 'add', if you want to remove things say 'remove', if you want to see your todos say 'print', say anything else to exit ")
        if 'add' in choice:
            add_todo()
        elif 'remove' in choice:
            remove_todo()
        elif 'print' in choice:
            print_todos()
        else:
            print("Thanks!")
            break


def remove_todo():
    to_delete = input("Which todo have you completed? ") - 1
    todos.remove(to_delete)
    reassign_numbers()


def reassign_numbers():
    for num in range(0, len(todos)):
        todos[num]["number"] = num + 1


def add_todo():
    print("When you're done entering your todos type 'Done!'")
    while(True):
        add_todo = raw_input("Name a thing you have to do: ")
        if "Done!" in add_todo:
            break
        todos.append(make_todo(add_todo))


def print_todos():
    print("--------------------")
    for todo in todos:
        print("Here is your {0} todo".format(todo["number"]))
        for key, value in todo.iteritems():
            print("The {0} is {1}".format(key, value))
        print("--------------------")


def make_todo(todo):
    due_date = raw_input("When is this due? ")
    category = raw_input("What category is this? ")
    return {
        "due_date": due_date,
        "category": category,
        "item": todo,
        "number": len(todos) + 1
    }


if __name__ == '__main__':
    main()
