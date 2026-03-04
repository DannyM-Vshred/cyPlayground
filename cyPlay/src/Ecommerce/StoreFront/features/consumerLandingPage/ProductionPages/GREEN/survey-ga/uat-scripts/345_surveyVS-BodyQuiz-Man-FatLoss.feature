@Prodution @green @body-type-quiz @man @body-type-quiz-green @beta
Feature: LE Move Landing page - Body Type Quiz - FatLoss
    Background: Load test data
        Given The user loads the LE test data

    Scenario: Man VS Survey Body Quiz - Fatloss Select Some Funnel Offers
        Given The user navigates to V Shred Survey page
        When The user starts new Body Type Survey for "Male"
        And The User describes self as "I'm not happy with my body"
        Then The user clicks "EVERYTHING FOR JUST $57.00" button
        And The user fills out the survey order form
        And The User "Selects" Checkout Upsell Offer
        And The User "Declines" the "Burn Evolved" Funnel Offer
        And The User Declines the Burn 1B Upsell Funnel Offer
        And The User Declines the recipe guide Upsell Funnel Offer
        And The User "Declines" the "Burn PM" Funnel Offer
        And The user clicks on "VSU upgrade" button
