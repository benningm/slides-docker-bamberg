Feature: Calculator
  The calculator must be able to calculate a simple addition.

  Scenario: Add a value to the buffer
    Given a new calculator instance is created
    When the buffer is set to <buffer>
    And the value <value> is added
    Then the buffer must be <result>
    Examples:
    | buffer | value | result |
    | 10 | 20 | 30 |
    | 23 | 65 | 88 |
