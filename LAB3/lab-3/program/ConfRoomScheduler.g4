grammar ConfRoomScheduler;

prog: stat+ ;

stat: reserve NEWLINE                # reserveStat
    | cancel NEWLINE                 # cancelStat
    | toList NEWLINE                 # toListStat
    | NEWLINE                        # blank
    ;

reserve: 'RESERVAR' ID 'PARA' DATE 'DE' TIME 'A' TIME 'POR' NAME (description)?; 

cancel: 'CANCELAR' ID 'PARA' DATE 'DE' TIME 'A' TIME 'POR' NAME;

toList: 'LISTAR RESERVACIONES';

description: STRING;

STRING: '"' [ a-zA-Z0-9]+ '"' ;
NAME: [a-zA-Z]+ ;
DATE: DIGIT DIGIT '/' DIGIT DIGIT '/' DIGIT DIGIT DIGIT DIGIT ; 
TIME: DIGIT DIGIT ':' DIGIT DIGIT ; 
ID  : [a-zA-Z0-9]+ ; 
NEWLINE: '\r'? '\n' ; 
WS  : [ \t]+ -> skip ; 

fragment DIGIT : [0-9] ;
