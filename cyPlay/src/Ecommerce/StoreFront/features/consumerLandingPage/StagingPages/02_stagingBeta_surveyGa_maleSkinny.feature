@stagingBeta
Feature: Staging VShred - Survey-GA - Skinny Ripped
    Background: Load test data
        Given The user loads the LE test data

    Scenario: Staging Beta - SurveyGA - Skinny Ripped
        When The user navigates to V Shred Survey page
        And The user starts new Survey GA Funnel for "Man"
        When The User describes self as "I'm skinny fat"
        Then The user clicks "EVERYTHING FOR JUST $57.00" button
        And The user fills out the survey order form
        And The User "Declines" Checkout Upsell Offer
        When The User Selects "One Bottle" of "Burn Evolved" Funnel Offer
        And The User "Declines" the "Burn 1B Upsell" Funnel Offer
        And The User "Upgrades" the "Burn PM" Funnel Offer
        And The User "Upgrades" the "Turmeric Black" Funnel Offer
        And The User "Upgrades" the "Enzymes" Funnel Offer
        And The User "Upgrades" the "Custom Diet Plan" Funnel Offer
        Then The user checks "Order Confirmation" email
