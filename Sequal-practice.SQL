
/*QUESTION 1*/

CREATE TABLE IF NOT EXISTS colleges_table (
  university_name VARCHAR(30),       /* Name of the visiting team                     */
  date_established DATE NOT NULL,   /* Final score of the game for the Buffs         */
  address VARCHAR(30),/* Final score of the game for the visiting team */  
  
  student_population INTEGER NOT NULL,        /* Date of the game     */    
  acceptance_rate DECIMAL NOT NULL,                     
);


/*QUESTION 2*/

INSERT INTO colleges_table(university_name, date_established,address, acceptance_rate, student_population)
VALUES('CU Boulder',1876, '1100 28th st, Boulder, CO 80303', '35,000','80');

CREATE VIEW names AS
select name
from colleges_table

/* 
\d+ tableName THIS GIVES US TABLE NAME
\q THIS quits postgresql		

*/ 
/*QUESTION 3*/

\c football_db
SELECT football_players.name, football_players.major FROM football_players ORDER BY football_players.major;
SELECT football_players.name, football_players.rushing_yards FROM football_players WHERE football_players.rushing_yards > 70;
SELECT football_games.visitor_name, football_games.visitor_score, football_games.home_score, football_games.game_date, football_games.players  FROM football_games WHERE football_games.visitor_name = 'Nebraska';
SELECT football_games.visitor_name, football_games.visitor_score, football_games.home_score, football_games.game_date FROM football_games WHERE football_games.visitor_score < football_games.home_score;
SELECT football_games.visitor_name, football_games.game_date FROM football_games WHERE football_games.game_date > 20180000;
SELECT football_games.visitor_name, football_games.game_date FROM football_games WHERE EXTRACT(YEAR FROM football_games.game_date) >= 2018;
SELECT COUNT(*) FROM football_games;
SELECT * FROM colleges_table;
SELECT NAME FROM colleges_table WHERE  

/*Question 4*/


