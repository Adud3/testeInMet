#languege: en
Feature: employee
  used to register new employees, alter, and delete

@login
Scenario Outline: register new employee
  Given I need to register a new employee
  When I pass "<name>", "<CPF>", "<sex>", "<Admission>", "<job>", "<salary>", "<isCLT>"
  Then page should show "<status>" message

Examples:
  | name | CPF            | sex       | Admissioin | job | salary | isCLT | status                                  |
  | G    | 252.214.160-00 | Masculino | 10/10/2010 | dev | 7000   | yes   | SUCESSO! Usuário cadastrado com sucesso |
