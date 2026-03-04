@Prodution @green @whatsMyBodyType @man @whatsMyBodyType-green @beta
Feature: LE Move Landing page - whatsMyBodyType - Fat Loss for Him
    Background: Load test data
        Given The user loads the LE test data

    Scenario: Man whatsMyBodyType - Fat Loss for Him Skip All Funnel Offers
        Given The user starts on full url "Whats my body type" page
        And The user starts new Survey GA Funnel for "Man"
        Then The User describes self as "I'm not happy with my body"
        Then The user clicks "EVERYTHING FOR JUST $57.00" button
        And The user fills out the survey order form
        And The User "Declines" Checkout Upsell Offer
        And The User "Declines" the "Burn Evolved" Funnel Offer
        And The User "Declines" the "Burn 1B Upsell" Funnel Offer
        And The User "Declines" the "Ultimate Recipe" Funnel Offer
        And The User "Declines" the "Burn PM" Funnel Offer
        And The User "Declines" the "Custom Plan" Funnel Offer
        And The user clicks on "VSU upgrade" button

