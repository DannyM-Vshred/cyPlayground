Feature: LE VSL survey-ga - video validation
    Background: Load test data
        Given The user loads the LE test data

    Scenario: Woman VS Survey - FemaleFLfitness
        Given The user starts on full survey-ga VSL url "fitness-female-fl" page
        Then Verify the checkout buttons are not visible on the page
        Then The user starts the video and verifies the video is playing
        Then The user verifies the vidalytics Id "FitnessFemaleFL" loaded on the page
        Then The user pauses the video
        Then The user skips the video
        Then Verify the checkout buttons on the page

    Scenario: Woman VS Survey - FemaleGTfitness
        Given The user Resizes the browser to "iPhone 15"
        Given The user starts on full survey-ga VSL url "fitness-female-gt" page
        Then Verify the checkout buttons are not visible on the page
        Then The user starts the video and verifies the video is playing
        Then The user verifies the vidalytics Id "FitnessFemaleGT" loaded on the page
        Then The user pauses the video
        Then The user skips the video
        Then Verify the checkout buttons on the page

    Scenario: Woman VS Survey - FemaleSFfitness
        Given The user starts on full survey-ga VSL url "fitness-female-sf" page
        Then Verify the checkout buttons are not visible on the page
        Then The user starts the video and verifies the video is playing
        Then The user verifies the vidalytics Id "FitnessFemaleSF" loaded on the page
        Then The user pauses the video
        Then The user skips the video
        Then Verify the checkout buttons on the page
