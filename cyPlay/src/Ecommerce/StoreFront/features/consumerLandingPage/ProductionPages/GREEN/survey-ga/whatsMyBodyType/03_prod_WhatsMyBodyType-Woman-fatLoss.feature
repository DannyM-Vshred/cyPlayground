@Prodution @green @whatsMyBodyType @woman @whatsMyBodyType-green @beta
Feature: LE Move Landing page - whatsMyBodyType - Woman Fat Loss
    Background: Load test data
        Given The user loads the LE test data

    Scenario: Woman whatsMyBodyType - Fat Loss for Her - Skips All Funnels
        Given The user starts on full url "Whats my body type" page
        When The user starts new Survey GA Funnel for "Woman"
        And The User describes self as "I have 20 lbs or more fat"
        Then The user clicks "EVERYTHING FOR JUST $57.00" button
        And The user fills out the survey order form
        And The User "Selects" Checkout Upsell Offer
        And The User "Declines" the "Burn Evolved" Funnel Offer
        And The User "Declines" the "Burn 1B Upsell" Funnel Offer
        And The User "Declines" the "Ultimate Recipe" Funnel Offer
        And The User "Declines" the "Burn PM" Funnel Offer
        And The User "Declines" the "VSU" Funnel Offer

