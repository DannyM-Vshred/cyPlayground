@stagingBeta
Feature: Staging Sculptnation - Survey-GA - Female Toned Skinny
    Background: Load test data
        Given The user loads the LE test data

    Scenario: Staging Beta - SurveyGA - Female Toned Skinny
        When The user navigates to "Survey GA" Sculptnation Survey page
        When The user starts new Survey GA Funnel for "Woman"
        When The User describes self as "I'm skinny. I need to add toned muscle"
        Then The user clicks "EVERYTHING FOR JUST $57.00" button
        And The user fills out the survey order form
        And The User "Declines" Checkout Upsell Offer
        And The User "Subscribes" the "Burn Evolved" Funnel Offer
        And The User "Declines" the "Burn PM" Funnel Offer
        And The User "Upgrades" the "Turmeric Black" Funnel Offer
        And The User "Declines" the "Enzymes" Funnel Offer
        And The User "Upgrades" the "Custom Plan" Funnel Offer
        Then The user checks "Order Confirmation" email
        When The user clears out the session data
        And The user logs into the Admin Tool using an account with "admin" credentials
        And The user searches the "dynamic" test email
        When The password is reset to default value
        Then The user logs out of Admin Tool
        When The client user logs into the SculptNation Account
        And The user navigates to MyAccount "Orders" page
        Then The Order summary is returned - "orderSummary"