require 'pry'
<<<<<<< HEAD

def game_hash
  game_hash = {
    :home => {
      :team_name => 'Brooklyn Nets',
      :colors => ['Black', 'White'],
      :players => {
        "Alan Anderson" => {
          :number => 0,
          :shoe => 16,
          :points => 22,
          :rebounds => 12,
          :assists => 12,
          :steals => 3,
          :blocks => 1,
          :slam_dunks => 1
        },
        "Reggie Evans" => {
          :number => 30,
          :shoe => 14,
          :points => 12,
          :rebounds => 12,
          :assists => 12,
          :steals => 12,
          :blocks => 12,
          :slam_dunks => 7
        },
        "Brook Lopez" => {
          :number => 11,
          :shoe => 17,
          :points => 17,
          :rebounds => 19,
          :assists => 10,
          :steals => 3,
          :blocks => 1,
          :slam_dunks => 15
        },
        "Mason Plumlee" => {
          :number => 1,
          :shoe => 19,
          :points => 26,
          :rebounds => 12,
          :assists => 6,
          :steals => 3,
          :blocks => 8,
          :slam_dunks => 5
        },
        "Jason Terry" => {
          :number => 31,
          :shoe => 15,
          :points => 19,
          :rebounds => 2,
          :assists => 2,
          :steals => 4,
          :blocks => 11,
          :slam_dunks => 1
        }
      }
    },
    :away => {
      :team_name => 'Charlotte Hornets',
      :colors => ['Turquoise', 'Purple'],
      :players => {
        "Jeff Adrien" => {
          :number => 4,
          :shoe => 18,
          :points => 10,
          :rebounds => 1,
          :assists => 1,
          :steals => 2,
          :blocks => 7,
          :slam_dunks => 2
        },
        "Bismak Biyombo" => {
          :number => 0,
          :shoe => 16,
          :points => 12,
          :rebounds => 4,
          :assists => 7,
          :steals => 7,
          :blocks => 15,
          :slam_dunks => 10
        },
        "DeSagna Diop" => {
          :number => 2,
          :shoe => 14,
          :points => 24,
          :rebounds => 12,
          :assists => 12,
          :steals => 4,
          :blocks => 5,
          :slam_dunks => 5
        },
        "Ben Gordon" => {
          :number => 8,
          :shoe => 15,
          :points => 33,
          :rebounds => 3,
          :assists => 2,
          :steals => 1,
          :blocks => 1,
          :slam_dunks => 0
        },
        "Brendan Haywood" => {
          :number => 33,
          :shoe => 15,
          :points => 6,
          :rebounds => 12,
          :assists => 12,
          :steals => 22,
          :blocks => 5,
          :slam_dunks => 12
        }
      }
    }
  }
end

def home_team_name
  game_hash[:home][:team_name]
end

def num_points_scored(player)
  player_info = nil
  game_hash.each do |location, team_data|
    team_data.each do |team_attribute, team_attribute_data|
      if team_attribute == :players && team_attribute_data.include?(player)
        player_info = team_attribute_data[player]
        # binding.pry
      end 
    end 
  end 
  player_info[:points]
end

def shoe_size(player)
  player_info = nil
  game_hash.each do |location, team_data|
    team_data.each do |team_attribute, team_attribute_data|
      if team_attribute == :players && team_attribute_data.include?(player)
        player_info = team_attribute_data[player]
        # binding.pry
      end 
    end 
  end 
  player_info[:shoe]
end

def team_colors(team_name)
  game_hash.each do |location, team_data|
    if team_data[:team_name] == team_name
      return team_data[:colors]
    end
  end 
end 

def team_names
  a = []
  game_hash.each do |location, team_data|
    a << team_data[:team_name]
  end 
  a 
end 

def player_numbers(team_name)
  a = []
  game_hash.each do |location, team_data|
    if team_data[:team_name] == team_name 
      team_data.each do |team_attribute, attribute_data|
        if team_attribute == :players 
          attribute_data.each do |player, player_stats|
            a << player_stats[:number]
          end 
        end 
      end 
    end 
  end 
  a
end 

def player_stats(name)
  game_hash.each do |location, team_data|
    team_data.each do |team_attribute, attribute_data|
      if team_attribute == :players && attribute_data.include?(name) 
        return attribute_data[name]
      end 
    end 
  end 
end

def big_shoe_rebounds
  all_players = []
  game_hash.each do |location, team_data|
    team_data.each do |team_attribute, attribute_data|
      if team_attribute == :players
        attribute_data.each do |name, info|
          all_players << info 
        end 
      end 
    end 
  end 
  
  
  all_players.sort_by {|info| info[:shoe]}[all_players.length - 1][:rebounds]
  
=======

def game_hash
  game_hash = {
    :home => {
      :team_name => 'Brooklyn Nets',
      :colors => ['Black', 'White'],
      :players => {
        "Alan Anderson" => {
          :number => '0',
          :shoe => '16',
          :points => '22',
          :rebounds => '12',
          :assists => '12',
          :steals => '3',
          :blocks => '1',
          :slam_dunks => '1'
        },
        "Reggie Evans" => {
          :number => '30',
          :shoe => '14',
          :points => '12',
          :rebounds => '12',
          :assists => '12',
          :steals => '12',
          :blocks => '12',
          :slam_dunks => '7'
        },
        "Brook Lopez" => {
          :number => '11',
          :shoe => '17',
          :points => '17',
          :rebounds => '19',
          :assists => '10',
          :steals => '3',
          :blocks => '1',
          :slam_dunks => '15'
        },
        "Mason Plumlee" => {
          :number => '1',
          :shoe => '19',
          :points => '26',
          :rebounds => '12',
          :assists => '6',
          :steals => '3',
          :blocks => '8',
          :slam_dunks => '5'
        },
        "Jason Terry" => {
          :number => '31',
          :shoe => '15',
          :points => '19',
          :rebounds => '2',
          :assists => '2',
          :steals => '4',
          :blocks => '11',
          :slam_dunks => '1'
        }
      }
    },
    :away => {
      :team_name => 'Charlotte Hornets',
      :colors => ['Turqoise', 'Purple'],
      :players => {
        "Jeff Adrien" => {
          :number => '4',
          :shoe => '18',
          :points => '10',
          :rebounds => '1',
          :assists => '1',
          :steals => '2',
          :blocks => '7',
          :slam_dunks => '2'
        },
        "Bismak Biyombo" => {
          :number => '0',
          :shoe => '16',
          :points => '12',
          :rebounds => '4',
          :assists => '7',
          :steals => '7',
          :blocks => '15',
          :slam_dunks => '10'
        },
        "DeSagna Diop" => {
          :number => '2',
          :shoe => '14',
          :points => '24',
          :rebounds => '12',
          :assists => '12',
          :steals => '4',
          :blocks => '5',
          :slam_dunks => '5'
        },
        "Ben Gordon" => {
          :number => '8',
          :shoe => '15',
          :points => '33',
          :rebounds => '3',
          :assists => '2',
          :steals => '1',
          :blocks => '1',
          :slam_dunks => '0'
        },
        "Brendan Haywood" => {
          :number => '33',
          :shoe => '15',
          :points => '6',
          :rebounds => '12',
          :assists => '12',
          :steals => '22',
          :blocks => '5',
          :slam_dunks => '12'
        }
      }
    }
  }
end

def home_team_name
  game_hash[:home][:team_name]
end

def num_points_scored(player)
  player_info = nil
  game_hash.each do |location, team_data|
    team_data.each do |team_attribute, team_attribute_data|
      binding.pry
      if team_attribute == :players && team_attribute.include?(player)
        player_info = team_attribute[player]
      end 
    end 
  end 
  player_info[:points]
>>>>>>> 778f25433a2cb5d2beb884752c376980f5bd8c3e
end