@stagingBeta
Feature: Staging VShred - Survey-GA - Female Fat Loss Extreme
    Background: Load test data
        Given The user loads the LE test data

    Scenario: Staging Beta - SurveyGA - Female FLE
        When The user navigates to V Shred Survey page
        When The user starts new Survey GA Funnel for "Woman"
        And The User describes self as "I have 20 lbs or more fat"
        Then The user clicks Claim Now
        And The user fills out the survey order form
        And The User "Selects" Checkout Upsell Offer
        When The User Selects "Three Bottle" of "Burn Evolved" Funnel Offer
        And The User "Declines" the "Burn 3B Upsell" Funnel Offer
        And The User "Declines" the "Burn PM" Funnel Offer
        And The User "Upgrades" the "Turmeric Black" Funnel Offer
        And The User "Declines" the "Enzymes" Funnel Offer
        And The User "Upgrades" the "VSU" Funnel Offer
        Then The user checks "Order Confirmation" email
