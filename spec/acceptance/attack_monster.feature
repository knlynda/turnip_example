@attack_monster_steps
Feature: Attacking a monster
  As player
  I want to attack monsters
  So I can attack and kill monsters

  Background:
    Given I am a player
    And there is a monster

  Scenario: attack the monster
    When I attack monster
    Then monster should not die

  Scenario: kill the monster
    When I kill monster
    Then monster should die