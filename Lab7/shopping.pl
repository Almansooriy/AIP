start :-
    Basket = [coffee, milk, chocolate, apple, juice],
    menu(Basket).

menu(Basket) :-
    nl,
    write('*** SHOPPING LIST ***'), nl,
    write('d. display all items.'), nl,
    write('a. Add an item to the list.'), nl,
    write('e. exit.'), nl,
    write('ENTER YOUR CHOICE: '),
    read(Choice),
    action(Choice, Basket).

action(d, Basket) :-
    nl,
    display_items(Basket),
    menu(Basket).


action(a, Basket) :-
    nl,
    write('enstart :-
    Basket = [coffee, milk, chocolate, apple, juice],
    menu(Basket).

menu(Basket) :-
    nl,
    write('*** SHOPPING LIST ***'), nl,
    write('d. display all items.'), nl,
    write('a. Add an item to the list.'), nl,
    write('e. exit.'), nl,
    write('ENTER YOUR CHOICE: '),
    read(Choice),
    action(Choice, Basket).


action(d, Basket) :-
    nl,
    display_items(Basket),
    menu(Basket).

action(a, Basket) :-
    nl,
    write('enter the item you want to add it: '),
    read(Item),
    NewBasket = [Item|Basket],
    write('The item has been added'), nl,
    menu(NewBasket).

action(e, _) :-
    write('Goodbye!'), nl.

action(_, Basket) :-
    write('Invalid choice, try again.'), nl,
    menu(Basket).

display_items([]).
display_items([Head|Tail]) :-
    write(Head), nl,
    display_items(Tail).
