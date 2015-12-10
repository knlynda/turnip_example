@attack_monster_steps
Feature: Attacking a human
  As monster
  I want to attack humans
  So I can attack and kill humans

  Background:
    Given I am a human
    And there is a monster

  Scenario: attack the monster
    When I attack monster
    Then monster should not die

  Scenario: kill the monster
    When I kill monster
    Then monster should die