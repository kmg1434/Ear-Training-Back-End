# frozen_string_literal: true
# This file should contain all the record creation needed to seed the database
# with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the
# db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create([
              { email: 'a@a', password: 'a' },
              { email: 'b@b', password: 'b' },
              { email: 'c@c', password: 'c' },
              { email: 'd@d', password: 'd' },
              { email: 'e@e', password: 'e' },
              { email: 'f@f', password: 'f' },
              { email: 'g@g', password: 'g' }
            ])

Game.create([
              { user_id: 1, lvl: 1, score: 0 },
              { user_id: 1, lvl: 2, score: 0.1 },
              { user_id: 1, lvl: 3, score: 0.2 },
              { user_id: 2, lvl: 1, score: 0.3 },
              { user_id: 2, lvl: 2, score: 0.4 },
              { user_id: 2, lvl: 3, score: 0.5 },
              { user_id: 3, lvl: 2, score: 0.6 },
              { user_id: 3, lvl: 2, score: 0.7 },
              { user_id: 4, lvl: 1, score: 0.8 }
            ])
