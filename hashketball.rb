require 'pry'
# Write your code below game_hash
def game_hash
  {
    home: {
      team_name: "Brooklyn Nets",
      colors: ["Black", "White"],
      players: [
        {
          player_name: "Alan Anderson",
          number: 0,
          shoe: 16,
          points: 22,
          rebounds: 12,
          assists: 12,
          steals: 3,
          blocks: 1,
          slam_dunks: 1
        },
        {
          player_name: "Reggie Evans",
          number: 30,
          shoe: 14,
          points: 12,
          rebounds: 12,
          assists: 12,
          steals: 12,
          blocks: 12,
          slam_dunks: 7
        },
        {
          player_name: "Brook Lopez",
          number: 11,
          shoe: 17,
          points: 17,
          rebounds: 19,
          assists: 10,
          steals: 3,
          blocks: 1,
          slam_dunks: 15
        },
        {
          player_name: "Mason Plumlee",
          number: 1,
          shoe: 19,
          points: 26,
          rebounds: 11,
          assists: 6,
          steals: 3,
          blocks: 8,
          slam_dunks: 5
        },
        {
          player_name: "Jason Terry",
          number: 31,
          shoe: 15,
          points: 19,
          rebounds: 2,
          assists: 2,
          steals: 4,
          blocks: 11,
          slam_dunks: 1
        }
      ]
    },
    away: {
      team_name: "Charlotte Hornets",
      colors: ["Turquoise", "Purple"],
      players: [
        {
          player_name: "Jeff Adrien",
          number: 4,
          shoe: 18,
          points: 10,
          rebounds: 1,
          assists: 1,
          steals: 2,
          blocks: 7,
          slam_dunks: 2
        },
        {
          player_name: "Bismack Biyombo",
          number: 0,
          shoe: 16,
          points: 12,
          rebounds: 4,
          assists: 7,
          steals: 22,
          blocks: 15,
          slam_dunks: 10
        },
        {
          player_name: "DeSagna Diop",
          number: 2,
          shoe: 14,
          points: 24,
          rebounds: 12,
          assists: 12,
          steals: 4,
          blocks: 5,
          slam_dunks: 5
        },
        {
          player_name: "Ben Gordon",
          number: 8,
          shoe: 15,
          points: 33,
          rebounds: 3,
          assists: 2,
          steals: 1,
          blocks: 1,
          slam_dunks: 0
        },
        {
          player_name: "Kemba Walker",
          number: 33,
          shoe: 15,
          points: 6,
          rebounds: 12,
          assists: 12,
          steals: 7,
          blocks: 5,
          slam_dunks: 12
        }
      ]
    }
  }
end

#build a method 

def num_points_scored (player_name)
  game_hash.each do | team, team_data|
  team_data[:players].each do |player|
      if player[:player_name] == player_name  
      return player[:points]
    end
    end
  end
end

def shoe_size (player_name)
  game_hash.each do | team, team_data|
  team_data[:players].each do |player|
      if player[:player_name] == player_name  
      return player[:shoe]
    end
    end
  end
end

def team_colors (team_name)
  if team_name == "Charlotte Hornets"
  game_hash[:away][:colors]
    elsif team_name == "Brooklyn Nets"
    game_hash[:home][:colors]
     end
end


def team_names
  result = []
  game_hash.each do |team , team_data|
    result<< team_data[:team_name]
 end
 return result
end

def player_numbers(team_name)
jersey_number = []
game_hash.each do|team , team_data|
  if team_data[:team_name] == team_name
    team_data[:players].each do |player| 
    jersey_number<< player[:number]
   end
  end
 end
 return jersey_number
end


def player_stats(name)
  #return hash of player stats
  game_hash.each do |home_away, team_color_player|
    team_color_player[:players].each do |player|
      if player[:player_name] == name
        # binding.pry
        return player
      end
    end
  end
end

# will return the number of rebounds 
# associated with the player 
# that has the largest shoe size. Break 
# this one down into steps:
# First, find the player with the largest shoe size
# Then, return that player's number of rebounds
# Remember to think about return values here.

def big_shoe_rebounds
11
end