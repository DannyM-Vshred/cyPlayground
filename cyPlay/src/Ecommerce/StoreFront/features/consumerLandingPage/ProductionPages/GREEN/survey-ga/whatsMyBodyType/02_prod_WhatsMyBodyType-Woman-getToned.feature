@Production @green @whatsMyBodyType @woman @whatsMyBodyType-green @beta
Feature: LE Move Landing page - whatsMyBodyType - Toned
    Background: Load test data
        Given The user loads the LE test data

    Scenario: Woman whatsMyBodyType - Get Toned Skip All Funnel Offers
        Given The user starts on full url "Whats my body type" page
        When The user starts new Survey GA Funnel for "Woman"
        When The User describes self as "I'm soft. I need to lose 5 to 10 lbs"
        Then The user clicks "EVERYTHING FOR JUST $57.00" button
        And The user fills out the survey order form
        And The User "Selects" Checkout Upsell Offer
        And The User "Declines" the "Burn Evolved" Funnel Offer
        And The User "Upgrades" the "Burn 1B Upsell" Funnel Offer
        And The User "Declines" the "Ultimate Recipe" Funnel Offer
        And The User "Declines" the "Burn PM" Funnel Offer
        And The user clicks on "VSU upgrade" button

