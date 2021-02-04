laptop(hp,58000).
laptop(hp,85000).
laptop(hp,110000).

laptop(dell,40000).
laptop(dell,70000).
laptop(dell,95000).

laptop(asus,42500).
laptop(asus,54900).
laptop(asus,78000).

laptop(lenevo,41000).
laptop(lenevo,59000).
laptop(lenevo,75500).

laptop(apple,68000).
laptop(apple,85000).
laptop(apple,150500).


laptop_price(58000,four).
laptop_price(85000,eight).
laptop_price(110000,sixteen).

laptop_price(40000,four).
laptop_price(70000,eight).
laptop_price(95000,sixteen).

laptop_price(42500,four).
laptop_price(54900,eight).
laptop_price(78000,sixteen).

laptop_price(41000,four).
laptop_price(59000,eight).
laptop_price(75500,sixteen).

laptop_price(68000,four).
laptop_price(85000,eight).
laptop_price(150500,sixteen).


	
find_laptop([]).
find_laptop([RAM|REST_FACT]):-
    laptop_price(PRICE,RAM),laptop(COMPANY,PRICE),
	format('~w ~w GB RAM laptop price is ~d taka~n',[COMPANY,RAM,PRICE]);
	find_laptop(REST_FACT).

