# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20180331134555) do

  create_table "games_wide", id: false, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.string "gameId", limit: 64
    t.string "seasonId", limit: 64
    t.string "seasonType", limit: 64
    t.integer "year"
    t.string "startTime", limit: 64
    t.string "gameStatus", limit: 64
    t.integer "attendance"
    t.string "dayNight", limit: 64
    t.string "duration", limit: 64
    t.integer "durationMinutes"
    t.string "awayTeamId", limit: 64
    t.string "awayTeamName", limit: 64
    t.string "homeTeamId", limit: 64
    t.string "homeTeamName", limit: 64
    t.string "venueId", limit: 64
    t.string "venueName", limit: 64
    t.string "venueSurface", limit: 64
    t.integer "venueCapacity"
    t.string "venueCity", limit: 64
    t.string "venueState", limit: 64
    t.string "venueZip", limit: 64
    t.string "venueMarket", limit: 64
    t.string "venueOutfieldDistances", limit: 128
    t.integer "homeFinalRuns"
    t.integer "homeFinalHits"
    t.integer "homeFinalErrors"
    t.integer "awayFinalRuns"
    t.integer "awayFinalHits"
    t.integer "awayFinalErrors"
    t.integer "homeFinalRunsForInning"
    t.integer "awayFinalRunsForInning"
    t.integer "inningNumber"
    t.string "inningHalf", limit: 64
    t.string "inningEventType", limit: 64
    t.integer "inningHalfEventSequenceNumber"
    t.string "description", limit: 128
    t.string "atBatEventType", limit: 64
    t.integer "atBatEventSequenceNumber"
    t.string "createdAt", limit: 64
    t.string "updatedAt", limit: 64
    t.string "status", limit: 64
    t.string "outcomeId", limit: 64
    t.string "outcomeDescription", limit: 64
    t.string "hitterId", limit: 64
    t.string "hitterLastName", limit: 64
    t.string "hitterFirstName", limit: 64
    t.integer "hitterWeight"
    t.integer "hitterHeight"
    t.string "hitterBatHand", limit: 64
    t.string "pitcherId", limit: 64
    t.string "pitcherFirstName", limit: 64
    t.string "pitcherLastName", limit: 64
    t.string "pitcherThrowHand", limit: 64
    t.string "pitchType", limit: 64
    t.string "pitchTypeDescription", limit: 64
    t.integer "pitchSpeed"
    t.integer "pitchZone"
    t.integer "pitcherPitchCount"
    t.integer "hitterPitchCount"
    t.integer "hitLocation"
    t.string "hitType", limit: 64
    t.integer "startingBalls"
    t.integer "startingStrikes"
    t.integer "startingOuts"
    t.integer "balls"
    t.integer "strikes"
    t.integer "outs"
    t.string "rob0_start", limit: 64
    t.integer "rob0_end"
    t.string "rob0_isOut", limit: 64
    t.string "rob0_outcomeId", limit: 64
    t.string "rob0_outcomeDescription", limit: 64
    t.string "rob1_start", limit: 64
    t.integer "rob1_end"
    t.string "rob1_isOut", limit: 64
    t.string "rob1_outcomeId", limit: 64
    t.string "rob1_outcomeDescription", limit: 64
    t.string "rob2_start", limit: 64
    t.integer "rob2_end"
    t.string "rob2_isOut", limit: 64
    t.string "rob2_outcomeId", limit: 64
    t.string "rob2_outcomeDescription", limit: 64
    t.string "rob3_start", limit: 64
    t.integer "rob3_end"
    t.string "rob3_isOut", limit: 64
    t.string "rob3_outcomeId", limit: 64
    t.string "rob3_outcomeDescription", limit: 64
    t.integer "is_ab"
    t.integer "is_ab_over"
    t.integer "is_hit"
    t.integer "is_on_base"
    t.integer "is_bunt"
    t.integer "is_bunt_shown"
    t.integer "is_double_play"
    t.integer "is_triple_play"
    t.integer "is_wild_pitch"
    t.integer "is_passed_ball"
    t.integer "homeCurrentTotalRuns"
    t.integer "awayCurrentTotalRuns"
    t.string "awayFielder1", limit: 64
    t.string "awayFielder2", limit: 64
    t.string "awayFielder3", limit: 64
    t.string "awayFielder4", limit: 64
    t.string "awayFielder5", limit: 64
    t.string "awayFielder6", limit: 64
    t.string "awayFielder7", limit: 64
    t.string "awayFielder8", limit: 64
    t.string "awayFielder9", limit: 64
    t.string "awayFielder10", limit: 64
    t.string "awayFielder11", limit: 64
    t.string "awayFielder12", limit: 64
    t.string "awayBatter1", limit: 64
    t.string "awayBatter2", limit: 64
    t.string "awayBatter3", limit: 64
    t.string "awayBatter4", limit: 64
    t.string "awayBatter5", limit: 64
    t.string "awayBatter6", limit: 64
    t.string "awayBatter7", limit: 64
    t.string "awayBatter8", limit: 64
    t.string "awayBatter9", limit: 64
    t.string "homeFielder1", limit: 64
    t.string "homeFielder2", limit: 64
    t.string "homeFielder3", limit: 64
    t.string "homeFielder4", limit: 64
    t.string "homeFielder5", limit: 64
    t.string "homeFielder6", limit: 64
    t.string "homeFielder7", limit: 64
    t.string "homeFielder8", limit: 64
    t.string "homeFielder9", limit: 64
    t.string "homeFielder10", limit: 64
    t.string "homeFielder11", limit: 64
    t.string "homeFielder12", limit: 64
    t.string "homeBatter1", limit: 64
    t.string "homeBatter2", limit: 64
    t.string "homeBatter3", limit: 64
    t.string "homeBatter4", limit: 64
    t.string "homeBatter5", limit: 64
    t.string "homeBatter6", limit: 64
    t.string "homeBatter7", limit: 64
    t.string "homeBatter8", limit: 64
    t.string "homeBatter9", limit: 64
    t.string "lineupTeamId", limit: 64
    t.string "lineupPlayerId", limit: 64
    t.integer "lineupPosition"
    t.integer "lineupOrder"
    t.index ["hitterFirstName", "hitterLastName"], name: "index_games_wide_on_hitterFirstName_and_hitterLastName"
    t.index ["pitcherFirstName", "pitcherLastName"], name: "index_games_wide_on_pitcherFirstName_and_pitcherLastName"
  end

end
