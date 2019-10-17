require 'bundler'
Bundler.require

$:.unshift File.expand_path("./../lib", __FILE__)
require 'app/player'
require 'app/board'
require 'app/game'
require 'app/application'


def perform
  application = Application.new
  while application.decision == "YES"
    application.party_ongoing
    application.party_ending
  end
end

perform

