@Prodution @green @whatsMyBodyType @woman @whatsMyBodyType-green @beta
Feature: LE Move Landing page - whatsMyBodyType - Toned Skinny
    Background: Load test data
        Given The user loads the LE test data

    Scenario: Woman whatsMyBodyType - Get Toned Skip All Funnel Offers
        Given The user starts on full url "Whats my body type" page
        When The user starts new Survey GA Funnel for "Woman"
        And The User describes self as "I'm skinny. I need to add toned muscle"
        Then The user clicks "EVERYTHING FOR JUST $57.00" button
        Then The user fills out the survey order form
        And The User "Declines" Checkout Upsell Offer
        And The User "Declines" the "Burn Evolved" Funnel Offer
        And The User "Declines" the "Burn 1B Upsell" Funnel Offer
        And The User "Declines" the "Ultimate Recipe" Funnel Offer
        And The User "Declines" the "Burn PM" Funnel Offer
        And The User "Declines" the "Custom Plan" Funnel Offer
        And The User "Declines" the "VSU" Funnel Offer
