Feature: LE VSL survey-ga - video validation
    Background: Load test data
        Given The user loads the LE test data

    Scenario: Male VS Survey - MaleFL
        Given The user starts on full survey-ga VSL url "male-fl" page
        Then Verify the checkout buttons are not visible on the page
        Then The user starts the video and verifies the video is playing
        Then The user verifies the vidalytics Id "MaleFL" loaded on the page
        Then The user pauses the video
        Then The user refreshs the page
        Then The user skips the video
        Then Verify the checkout buttons on the page

    Scenario: Male VS Survey - MaleGR
        Given The user Resizes the browser to "iPhone 15"
        Given The user starts on full survey-ga VSL url "male-gr" page
        Then Verify the checkout buttons are not visible on the page
        Then The user verifies the vidalytics Id "MaleGR" loaded on the page
        Then The user starts the video and verifies the video is playing
        Then The user pauses the video
        Then The user refreshs the page
        Then The user skips the video
        Then Verify the checkout buttons on the page

    Scenario: Male VS Survey - MaleCB
        Given The user Resizes the browser to "Samsung S24"
        Given The user starts on full survey-ga VSL url "male-cb" page
        Then Verify the checkout buttons are not visible on the page
        Then The user verifies the vidalytics Id "MaleCB" loaded on the page
        Then The user starts the video and verifies the video is playing
        Then The user pauses the video
        Then The user refreshs the page
        Then The user skips the video
        Then Verify the checkout buttons on the page

    Scenario: Male VS Survey - MaleSF
        Given The user starts on full survey-ga VSL url "male-sf" page
        Then Verify the checkout buttons are not visible on the page
        Then The user verifies the vidalytics Id "MaleSF" loaded on the page
        Then The user starts the video and verifies the video is playing
        Then The user pauses the video
        Then The user refreshs the page
        Then The user skips the video
        Then Verify the checkout buttons on the page

