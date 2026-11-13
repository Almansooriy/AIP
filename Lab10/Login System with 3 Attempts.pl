user(admin, 1234).
user(student, 9999).

login :-
    write('=== Welcome to Login Page ==='), nl,
    login_attempts(3).

login_attempts(0) :-
    write('Sorry, you exceeded the maximum number of attempts, try again later.'), nl,
    !.

login_attempts(Attempts) :-
    write('Enter username: '), nl,
    read(Username),
    write('Enter password: '), nl,
    read(Password),
    (   user(Username, Password)
    ->  write('Login Successful'), nl
    ;   write('Login Unsuccessful'), nl,
        Remaining is Attempts - 1,
        write('Attempts remaining: '), write(Remaining), nl,
        login_attempts(Remaining)
    ).
