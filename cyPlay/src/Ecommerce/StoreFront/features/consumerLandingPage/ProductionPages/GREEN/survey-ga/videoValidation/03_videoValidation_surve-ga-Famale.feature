Feature: LE VSL survey-ga - video validation
    Background: Load test data
        Given The user loads the LE test data

    Scenario: Woman VS Survey - femaleFL
        Given The user starts on full survey-ga VSL url "female-fl" page
        Then Verify the checkout buttons are not visible on the page
        Then The user starts the video and verifies the video is playing
        Then The user verifies the vidalytics Id "FemaleFl" loaded on the page
        Then The user pauses the video
        Then The user skips the video
        Then Verify the checkout buttons on the page

    Scenario: Woman VS Survey - FemaleGT
        Given The user starts on full survey-ga VSL url "female-gt" page
        Then Verify the checkout buttons are not visible on the page
        Then The user starts the video and verifies the video is playing
        Then The user verifies the vidalytics Id "FemaleGT" loaded on the page
        Then The user pauses the video
        Then The user refreshs the page
        Then The user skips the video
        Then Verify the checkout buttons on the page

    Scenario: Woman VS Survey - FemaleSF
        Given The user Resizes the browser to "iPhone 15"
        Given The user starts on full survey-ga VSL url "female-sf" page
        Then Verify the checkout buttons are not visible on the page
        Then The user starts the video and verifies the video is playing
        Then The user verifies the vidalytics Id "FemaleSF" loaded on the page
        Then The user pauses the video
        Then The user refreshs the page
        Then The user skips the video
        Then Verify the checkout buttons on the page
