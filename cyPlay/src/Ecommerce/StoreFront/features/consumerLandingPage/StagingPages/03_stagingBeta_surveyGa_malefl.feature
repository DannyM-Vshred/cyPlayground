@stagingBeta
Feature: Staging VShred - Survey-GA - Fat Loss Extreme
    Background: Load test data
        Given The user loads the LE test data

    Scenario: Staging Beta - SurveyGA - Male FLE
        Given The user Resizes the browser to "Samsung S24"
        When The user navigates to V Shred Survey page
        And The user starts new Survey GA Funnel for "Man"
        Then The User describes self as "I'm not happy with my body"
        And The user clicks "EVERYTHING FOR JUST $57.00" button
        And The user fills out the survey order form
        And The User "Selects" Checkout Upsell Offer
        When The User "Declines" the "Burn Evolved" Funnel Offer
        And The User "Declines" the "Burn 1B Upsell" Funnel Offer
        And The User "Upgrades" the "Ultimate Recipe" Funnel Offer
        When The User Selects "Three Bottle" of "Burn PM" Funnel Offer
        And The User "Declines" the "VSU" Funnel Offer
        Then The user checks "Order Confirmation" email
