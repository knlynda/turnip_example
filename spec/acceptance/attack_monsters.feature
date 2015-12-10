@attack_monster_steps
Feature: Attacking a monsters
  As human
  I want to attack monsters
  So I can attack and kill monsters

  Background:
    Given I am a human
    And there is a monsters:
      | hp | armor | damage |
      | 1  | 3     | 10     |
      | 2  | 2     | 10     |
      | 3  | 1     | 10     |

  Scenario: attack the monster
    When I attack monsters
    Then monster should not die

  Scenario: kill the monster
    When I kill monsters
    Then monster should die