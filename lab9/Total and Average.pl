% Program to calculate Total and Average of three numbers
calculate_total_average :-
    write('Enter first number: '), nl,
    read(N1),
    write('Enter second number: '), nl,
    read(N2),
    write('Enter third number: '), nl,
    read(N3),
    Total is N1 + N2 + N3,
    Average is Total / 3,
    write('Total is: '), write(Total), nl,
    write('Average is: '), write(Average), nl.
