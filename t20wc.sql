-- 🔹 1. Display all match details
SELECT * FROM t20wc;


-- 🔹 2. List all unique venues
SELECT DISTINCT Venue AS `T20 WC 2024 VENUES` FROM T20WC;


-- 🔹 3. Count total number of matches
SELECT COUNT(`Match No.`) AS TOTAL_MATCHES FROM T20WC;


-- 🔹 4. Find total matches won by each team
SELECT Winners, COUNT(*) AS MATCHES_WON FROM T20WC
GROUP BY Winners
ORDER BY MATCHES_WON DESC;


-- 🔹 5. Find matches where toss winner also won the match
SELECT * FROM T20WC
WHERE `Toss Winning` = Winners;


-- 🔹 6. List top 5 highest first innings scores
SELECT `1st Team`, `First Innings Score` FROM T20WC
ORDER BY `First Innings Score` DESC
LIMIT 5;


-- 🔹 7. Count matches by stage (Group, Semi, Final)
SELECT STAGE, COUNT(*) AS MATCHES_PLAYED FROM T20WC
GROUP BY STAGE;


-- 🔹 8. Find average winning margin
SELECT AVG(`Winning Margin`) AS Avg_Winning_Margin_Runs
FROM T20WC
WHERE `Won by` = 'RUNS';


-- 🔹 9. List all matches with “Player of the Match”
SELECT `Match No.`, Winners, `Player Of The Match` FROM T20WC;


-- 🔹 10. Show top scorers and their highest scores
SELECT `Top Scorer`, `Highest Score` FROM T20WC
ORDER BY `Highest Score` DESC
LIMIT 5;


-- 🔹 11. Find the team with the most “Player of the Match” awards
SELECT Winners, COUNT(`Player Of The Match`) AS TOTAL_AWARDS FROM T20WC
GROUP BY Winners
ORDER BY TOTAL_AWARDS DESC
LIMIT 1;


-- 🔹 12. Compare matches won by batting first vs fielding first
SELECT `Toss Decision`, COUNT(*) AS MATCHES_WON FROM T20WC
WHERE `Toss Winning`= Winners
GROUP BY `Toss Decision`;