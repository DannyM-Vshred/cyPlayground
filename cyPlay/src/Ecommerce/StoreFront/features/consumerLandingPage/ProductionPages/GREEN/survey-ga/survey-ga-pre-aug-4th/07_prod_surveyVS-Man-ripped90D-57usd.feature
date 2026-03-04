@Prodution @green @survey-ga @man @survey-ga-green @beta
Feature: LE Move Landing page - survey-ga - Ripped Skinny
    Background: Load test data
        Given The user loads the LE test data

    Scenario: Male VS Survey - "Ripped Skinny for 90 Days for $57.00" - skipAllFunnels
        When The user navigates to V Shred Survey-ga pre aug 4th page
        And The user starts new Survey GA Funnel for "Man"
        When The User describes self as "I'm skinny fat"
        Then The user clicks "EVERYTHING FOR JUST $57.00" button
        And The user fills out the survey order form
        And The User "Declines" Checkout Upsell Offer
        And The User "Upgrades" the "Burn Evolved" Funnel Offer
        And The User "Declines" the "Burn Evolved" Funnel Offer
        When The User "Declines" the "Burn PM" Funnel Offer
        When The User "Declines" the "Turmeric Black" Funnel Offer
        When The User "Upgrades" the "Enzymes" Funnel Offer
        And The User "Declines" the "Custom Diet Plan" Funnel Offer
