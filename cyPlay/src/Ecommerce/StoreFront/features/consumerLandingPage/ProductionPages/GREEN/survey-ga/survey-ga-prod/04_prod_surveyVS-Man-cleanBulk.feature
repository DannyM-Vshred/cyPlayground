@Prodution @green @survey-ga @man @survey-ga-green @beta
Feature: LE Move Landing page - survey-ga - Clean Bulk
    Background: Load test data
        Given The user loads the LE test data

    Scenario: Man VS Survey - Clean Bulk Select Some Funnel Offers
        When The user navigates to V Shred Survey page
        When The user starts new Survey GA Funnel for "Man"
        When The User describes self as "I can't get bigger or gain muscle"
        Then The user clicks "EVERYTHING FOR JUST $57.00" button
        And The user fills out the survey order form
        And The User "Declines" Checkout Upsell Offer
        And The User "Declines" the "Burn Evolved" Funnel Offer
        And The User Declines the Burn 1B Upsell Funnel Offer
        And The User "Declines" the "Burn PM" Funnel Offer
        And The User Declines the recipe guide Upsell Funnel Offer
        And The User "Declines" the "Custom Plan" Funnel Offer
        And The User "Declines" the "VSU" Funnel Offer
