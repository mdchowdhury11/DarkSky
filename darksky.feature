@web @regression @login
  Feature: Temperature feature




    @invalidSignUp
    Scenario: Verify invalid sign up
      Given I am on home page
      When I click on DarkSkyAPI button on home screen
      Then I click on SignUp button on bottom of the screen
      And I click on Register button on upper right hand corner of the screen
      Then I verify error message "please fill out this field"

    @currentTemperature
    Scenario: Verify Current Temperature should not be greater or less than the Temperature from Daily Timeline
      Given I am on home page
      Then I verify current temp is not greater or less then temps from daily timeline

    @displayCurrentTemperature
    Scenario: Verify individual day temp timeline
      Given I am on home page
      When I expand todays timeline
      Then I verify lowest and highest temp is displayed correctly

    @displayTimeline
     Scenario: Verify timline is displayed in correct format
       Given I am on home page
       Then I verify timeline is displayed with two hours incremented