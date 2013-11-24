
#Given the following game data, calculate the leaderboard.
# list should be sorted by number of wins.

#1. Patriots 16 wins, 0 losses
#2. Colts, 8 wins, 8 losses
#3. Broncos, 4 wins, 12 losses
#4. Steelers, 2 wins, 14 losses
#Calculate the leaderboard in the following format (data is exaggerated, but the Patriots are on top!) 
[
  {
    home_team: "Patriots",
    away_team: "Broncos",
    home_score: 7,
    away_score: 3
  },
  {
    home_team: "Broncos",
    away_team: "Colts",
    home_score: 3,
    away_score: 0
  },
  {
    home_team: "Patriots",
    away_team: "Colts",
    home_score: 11,
    away_score: 7
  },
  {
    home_team: "Steelers",
    away_team: "Patriots",
    home_score: 7,
    away_score: 21
  }
]