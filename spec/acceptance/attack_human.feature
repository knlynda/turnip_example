@attack_human_steps
Feature: Attacking a human
  As monster
  I want to attack humans
  So I can attack and kill humans

  Background:
    Given I am a monster
    And there is a human

  Scenario: attack the human
    When I attack human
    Then human should not die

  Scenario: kill the human
    When I kill human
    Then human should die