#Language: en
Feature: login user
  used to login users to the system

Scenario: Login Users
  Given I need to Login
  When trying to login using "TestUser10" with password "pass10"
  Then it should have message "SAIR"
