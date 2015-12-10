@attack_monster_steps
Feature: Attacking a monsters
  As human
  I want to attack monsters
  So I can attack and kill monsters

  Background:
    Given I am a human
    And there is a monsters:
      | hp  | armor | damage |
      | 100 | 3     | 50     |
      | 200 | 2     | 50     |
      | 300 | 1     | 50     |

  Scenario: attack the monster
    When I attack monsters
    Then monsters should not die

  Scenario: kill the monster
    When I kill monsters
    Then monsters should die