Feature: LE VSL survey-ga - video validation
    Background: Load test data
        Given The user loads the LE test data

    Scenario: Male VS Survey - MaleGRfitness
        Given The user Resizes the browser to "iPhone 15"
        Given The user starts on full survey-ga VSL url "fitness-male-gr" page
        Then Verify the checkout buttons are not visible on the page
        Then The user verifies the vidalytics Id "FitnessMaleGR" loaded on the page
        Then The user starts the video and verifies the video is playing
        Then The user pauses the video
        Then The user skips the video
        Then Verify the checkout buttons on the page

    Scenario: Male VS Survey - MaleFLfitness
        Given The user starts on full survey-ga VSL url "fitness-male-fl" page
        Then Verify the checkout buttons are not visible on the page
        Then The user verifies the vidalytics Id "FitnessMaleFL" loaded on the page
        Then The user starts the video and verifies the video is playing
        Then The user pauses the video
        Then The user refreshs the page
        Then The user skips the video
        Then Verify the checkout buttons on the page


    Scenario: Male VS Survey - MaleCBfitness
        Given The user starts on full survey-ga VSL url "fitness-male-cb" page
        Then Verify the checkout buttons are not visible on the page
        Then The user verifies the vidalytics Id "FitnessMaleCB" loaded on the page
        Then The user starts the video and verifies the video is playing
        Then The user pauses the video
        Then The user refreshs the page
        Then The user skips the video
        Then Verify the checkout buttons on the page

    Scenario: Male VS Survey - MaleSFfitness
        Given The user Resizes the browser to "Samsung S24"
        Given The user starts on full survey-ga VSL url "fitness-male-sf" page
        Then Verify the checkout buttons are not visible on the page
        Then The user verifies the vidalytics Id "FitnessMaleSF" loaded on the page
        Then The user starts the video and verifies the video is playing
        Then The user pauses the video
        Then The user refreshs the page
        Then The user skips the video
        Then Verify the checkout buttons on the page

