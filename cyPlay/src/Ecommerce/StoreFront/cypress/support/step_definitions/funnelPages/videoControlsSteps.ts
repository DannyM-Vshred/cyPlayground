import { Then } from '@badeball/cypress-cucumber-preprocessor';
import {
    consumerLandingPageLocators,
    videoControlsLocators,
} from '../../locator_libraries';

Then(
    'The user verifies the vidalytics Id {string} loaded on the page',
    (vidalyticsId: string) => {
        cy.get('@staticTestData').then((staticTestData: any) => {
            const key = vidalyticsId.trim();

            const vidMap: Record<string, string> = {
                FemaleFl: staticTestData.vidalyticsIdFemaleFL,
                MaleGR: staticTestData.vidalyticsIdMaleGR,
                MaleSF: staticTestData.vidalyticsIdMaleSF,
                FemaleSF: staticTestData.vidalyticsIdFemaleSF,
                MaleCB: staticTestData.vidalyticsIdMaleCB,
                FemaleGT: staticTestData.vidalyticsIdFemaleGT,
                MaleFL: staticTestData.vidalyticsIdMaleFL,
                FitnessMaleGR: staticTestData.vidalyticsIdMaleGRfitness,
                FitnessFemaleFL: staticTestData.vidalyticsIdFemaleFLfitness,
                FitnessMaleSF: staticTestData.vidalyticsIdMaleSFfitness,
                FitnessMaleCB: staticTestData.vidalyticsIdMaleCBfitness,
                FitnessFemaleGT: staticTestData.vidalyticsIdFemaleGTfitness,
                FitnessMaleFL: staticTestData.vidalyticsIdMaleFLfitness,
                FitnessFemaleSF: staticTestData.vidalyticsIdFemaleSFfitness,
            };

            const vidId = vidMap[key];

            cy.log(`vidalytics key: "${key}"`);
            cy.log(`Using vidalytics id: ${vidId}`);

            // Fail with a clear error
            assert.isOk(vidId, `No vidalytics ID found for key "${key}"`);

            videoControlsLocators
                .vidalyticsId(vidId)
                .should('be.visible', { timeout: 10000 });
        });
    }
);

Then('The user starts the video and verifies the video is playing', () => {
    // eslint-disable-next-line cypress/no-unnecessary-waiting
    cy.wait(1500);

    videoControlsLocators.startStopControler().click();
    videoControlsLocators.playingVideo().should('exist');
    // Verifies the percent of the progress bar is increasing
    videoControlsLocators.progressionPercent().then((first) => {
        // eslint-disable-next-line cypress/no-unnecessary-waiting
        cy.wait(2000);
        videoControlsLocators.progressionPercent().then((second) => {
            expect(second).to.be.greaterThan(first);
        });
    });
});

Then('The user pauses the video', () => {
    // eslint-disable-next-line cypress/no-unnecessary-waiting
    cy.wait(1500);
    videoControlsLocators.startStopControler().click();
    videoControlsLocators.playingVideo().should('not.exist');
});

Then('The user refreshs the page', () => {
    cy.reload();
});

Then('Verify the checkout buttons are not visible on the page', () => {
    consumerLandingPageLocators.productPage
        .addToOrderButton()
        .scrollIntoView()
        .should('not.be.visible');
});

Then('Verify the checkout buttons on the page', () => {
    consumerLandingPageLocators.productPage
        .addToOrderButton()
        .invoke('css', 'display', 'block')
        .scrollIntoView()
        .should('be.visible');
});

Then('The user Resizes the browser to mobile view', () => {
    videoControlsLocators.resizeBrowserMobile();
});

Then('The user Resizes the browser to desktop view', () => {
    videoControlsLocators.resizeBrowserDesktop();
});

Then('The user Resizes the browser to {string}', (mobileView: string) => {
    switch (mobileView) {
        case 'iPhone12 pro max':
            videoControlsLocators.resizeBrowseriPhone12ProMax();
            break;
        case 'iPhone5':
            videoControlsLocators.resizeBrowseriPhone5();
            break;
        case 'iPhone4':
            videoControlsLocators.resizeBrowseriPhone4();
            break;
        case 'iPhone XR':
            videoControlsLocators.resizeBrowseriPhoneXR();
            break;
        case 'iPhone 15':
            videoControlsLocators.resizeBrowseriPhone15();
            break;
        case 'Samsung Galaxy S10 Lite':
            videoControlsLocators.resizeBrowserSamsungGalaxyS10Lite();
            break;
        case 'Samsung Galaxy S6':
            videoControlsLocators.resizeBrowserSamsungGalaxyS6();
            break;
        case 'Samsung S10':
            videoControlsLocators.resizeBrowserSamsungS10();
            break;
        case 'Samsung S24':
            videoControlsLocators.resizeBrowserSamsungS24Ultra();
            break;
        case 'Tablet':
            videoControlsLocators.resizeBrowserTablet();
            break;
        case 'iPad 10':
            videoControlsLocators.resizeBrowseriPad10();
            break;
        default:
            throw new Error(`Invalid ${mobileView}`);
    }
});
