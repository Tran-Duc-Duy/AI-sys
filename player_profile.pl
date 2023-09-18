% Факты с одним аргументом

player(john).
player(sarah).
player(mike).
player(lisa).
player(alex).
player(emily).
player(mark).
player(jessica).
player(david).
player(amy).
player(brian).
player(linda).
player(steve).
player(karen).
player(peter).
player(laura).
player(chris).
player(rachel).
player(kevin).
player(michelle).

% Факты с двумя аргументами

player_type(john, casual).
player_type(sarah, hardcore).
player_type(mike, casual).
player_type(lisa, casual).
player_type(alex, hardcore).
player_type(emily, hardcore).
player_type(mark, casual).
player_type(jessica, casual).
player_type(david, hardcore).
player_type(amy, casual).
player_type(brian, casual).

% Связь фактов с двумя аргументами с другими фактами

player_level(john, 5).
player_level(sarah, 10).
player_level(mike, 3).
player_level(lisa, 7).
player_level(alex, 12).
player_level(emily, 8).
player_level(mark, 2).
player_level(jessica, 5).
player_level(david, 15).
player_level(amy, 4).

% Правила для профилей игроков

casual_player(Player) :-
    player_type(Player, casual).

hardcore_player(Player) :-
    player_type(Player, hardcore).

higher_level(Player1, Player2) :-
    player_level(Player1, Level1),
    player_level(Player2, Level2),
    Level1 > Level2.

same_level(Player1, Player2) :-
    player_level(Player1, Level),
    player_level(Player2, Level),
    Player1 \= Player2.

same_type(Player1, Player2) :-
    player_type(Player1, Type),
    player_type(Player2, Type),
    Player1 \= Player2.