@Prodution @green @whatsMyBodyType @man @whatsMyBodyType-green @beta
Feature: LE Move Landing page - whatsMyBodyType - Ripped in 90 Days
    Background: Load test data
        Given The user loads the LE test data

    Scenario: Male whatsMyBodyType - "Ripped in 90 Days for $67.00" - skipAllFunnels
        Given The user starts on full url "Whats my body type" page
        And The user starts new Survey GA Funnel for "Man"
        When The User describes self as "I'm happy with my body, but"
        Then The user clicks "EVERYTHING FOR JUST $67.00" button
        And The user fills out the survey order form
        And The User "Selects" Checkout Upsell Offer
        And The User "Declines" the "Burn Evolved" Funnel Offer
        And The User "Declines" the "Burn 1B Upsell" Funnel Offer
        And The User "Declines" the "Ultimate Recipe" Funnel Offer
        And The User "Declines" the "Burn PM" Funnel Offer
        And The User "Declines" the "VSU" Funnel Offer

