Feature: See Teachers

  Scenario: see list with all teachers
    Given user entered the <link>
    |http://www.cs.umss.edu.bo/index.jsp|
    When user selects the 'Plantel docente' option
    Then user should see a list with all teachers

  Scenario: Search a teacher
    Given user enterd the 'Plantel docente' section
    When user selects search <option>
    |Buscar por nombre|
    |Buscar por materia|
    And user enters <search> in the field 'Buscar docente'
    |Laime|
    |Calidad|
    Then user should see a link to the search result
    |Lic Laime Zapata Valentin|

  Scenario: See teacher information
    Given user enterd the 'Plantel docente' section
    When user clicks on teacher´s name
    Then user should see all teacher´s information

