@Production @survey-fl @woman @survey-fl-green @negative
Feature: Survey-FB Female Negative Tests
    Background: Load test data
        Given The user loads the LE test data

    Scenario: Survey-FB Female Get Toned No Data
        When The user is in the "Female" "Get Toned" funnel page
        Then The user fills in the fields on the survey page without entering "data"
        Then Verify that "all" error message displays

    Scenario: Survey-FB Female Get Toned No Name
        When The user is in the "Female" "Get Toned" funnel page
        Then The user fills in the fields on the survey page without entering "name"
        Then Verify that "no name" error message displays

    Scenario: Survey-FB Female Get Toned No Email
        When The user is in the "Female" "Get Toned" funnel page
        Then The user fills in the fields on the survey page without entering "email"
        Then Verify that "no email" error message displays

    Scenario: Survey-FB Female Get Toned No Address
        When The user is in the "Female" "Get Toned" funnel page
        Then The user fills in the fields on the survey page without entering "address"
        Then Verify that "no address" error message displays

    Scenario: Survey-FB Female Get Toned No City
        When The user is in the "Female" "Get Toned" funnel page
        Then The user fills in the fields on the survey page without entering "city"
        Then Verify that "no city" error message displays

    Scenario: Survey-FB Female Get Toned No State
        When The user is in the "Female" "Get Toned" funnel page
        Then The user fills in the fields on the survey page without entering "state"
        Then Verify that "no state" error message displays

    Scenario: Survey-FB Female Get Toned No Postal Code
        When The user is in the "Female" "Get Toned" funnel page
        Then The user fills in the fields on the survey page without entering "postal"
        Then Verify that "no postal" error message displays

    Scenario: Survey-FB Female Get Toned No Credit Card Number
        When The user is in the "Female" "Get Toned" funnel page
        Then The user fills in the fields on the survey page without entering "card number"
        Then Verify that "no card number" error message displays

    Scenario: Survey-FB Female Get Toned No Credit Card Expiration Month
        When The user is in the "Female" "Get Toned" funnel page
        Then The user fills in the fields on the survey page without entering "expiration date"
        Then Verify that "no expire date" error message displays

    Scenario: Survey-FB Female Get Toned No CVV
        When The user is in the "Female" "Get Toned" funnel page
        Then The user fills in the fields on the survey page without entering "cvv"
        Then Verify that "no cvv" error message displays

    Scenario: Survey-FB Female Get Toned No Payment Postal Code
        When The user is in the "Female" "Get Toned" funnel page
        Then The user fills in the fields on the survey page without entering "card postal"
        Then Verify that "no payment postal" error message displays
