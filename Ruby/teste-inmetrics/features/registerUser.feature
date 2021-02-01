#language:en
Feature: Register User
  used to register users to the system

# For this scenario since I'm really busy and short on time I'm only going to do a single entry,
# We could use multiple data entries using Scenario Outline
# Where this would allow us to pass a table with different users, passwords, and what we could expect as a return.
# For example we could have a table like
# | user      | password  | repeatPass | answer                |
# | AlphaUser | alphaPass | alphaPass  | redirected            |
# | BetaUser  | alphaPass | BetaPass   | Senhas não combinam   |
# | AlphaUser | alphaPass | alphaPass  | Usuário já cadastrado |
# This would end up testing alot more and have better coverage,
# the step definiton would become a litte more complex but would compensate in the long run
# we could for better modularity also just create all thease scenarios

  Context: Starting page
    Given the need to register a user

  Scenario: Register Users
    When trying to register "TestUser10" with password "pass10"
    Then it should give message "redirected"
