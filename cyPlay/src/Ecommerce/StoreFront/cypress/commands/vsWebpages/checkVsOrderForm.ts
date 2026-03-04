declare global {
    namespace Cypress {
        interface Chainable {
            checkVsOrderForm: (clientEmail: string) => void;
        }
    }
}

/**
 * Command to Identify VS Checkout Form Type before filling-out the form
 * @param clientEmail random email created in the Step definition
 * @example cy.checkVsOrderForm('automation-8f61be+139170802@inbox.mailtrap.io')
 */

export const checkVsOrderForm = (clientEmail: string): void => {
    cy.get('@staticTestData').then((staticTestData: any) => {
        cy.url().then((checkoutUrl: any) => {
            const isProdServer =
                checkoutUrl.includes(`https://le.vshred.com`) ||
                checkoutUrl.includes(`https://vshred.com`) ||
                checkoutUrl.includes(`https://le.vshredmd.com`) ||
                checkoutUrl.includes(`https://sculptnation.com`) ||
                checkoutUrl.includes(`https://whatsmybodytype.com`);

            if (isProdServer) {
                cy.visit(
                    `${checkoutUrl}&force_gateway=Braintree&qa_test=VSQAT`
                );
                cy.request({
                    method: 'GET',
                    url: checkoutUrl,
                    headers: {
                        'x-canary': 'blue',
                        'User-Agent': 'Cypress/1.0 (Test Environment)',
                    },
                }).then((response) => {
                    // Basic validation (you can add more based on what you want to verify)
                    expect(response.status).to.eq(200);
                    expect(response.headers).to.have.property('x-server-name');
                    expect(response.headers['x-server-name']).to.match(
                        /^le-production-blue/
                    );
                    // log headers or body for inspection
                    cy.log(
                        'Response Headers:',
                        JSON.stringify(response.headers)
                    );
                });
            }
            const isUatServer =
                checkoutUrl.includes(`https://le-uat.vshred.com`) ||
                checkoutUrl.includes(`https://le-uat.sculptnation.com`) ||
                checkoutUrl.includes(`https://uat.vshred.com`);

            if (isUatServer) {
                cy.visit(
                    `${checkoutUrl}&force_gateway=Braintree&qa_test=VSQAT`
                );
            }

            if (checkoutUrl.includes(`/vshred-order?`)) {
                cy.logStep('New VS Order Checkout Form UCP');
                cy.filloutVsUcpCheckout(
                    staticTestData.firstName,
                    staticTestData.lastName,
                    clientEmail,
                    staticTestData.address,
                    staticTestData.city,
                    staticTestData.state,
                    staticTestData.postalCode,
                    staticTestData.phoneNumber
                );
            } else if (checkoutUrl.includes(`/vshred-ecom?`)) {
                cy.filloutVsEcomCheckout(
                    clientEmail,
                    staticTestData.firstName,
                    staticTestData.lastName,
                    staticTestData.address,
                    staticTestData.city,
                    staticTestData.state,
                    staticTestData.postalCode,
                    staticTestData.phoneNumber
                );
            } else if (checkoutUrl.includes(`/secure-checkout?`)) {
                cy.logStep('LE-VS Secure Checkout Order Form');
                cy.filloutVsSecureCheckout(clientEmail);
            } else if (
                checkoutUrl.includes(`survey/checkout?`) ||
                checkoutUrl.includes(`survey-0804/checkout?`) ||
                checkoutUrl.includes(`fast-checkout?`) ||
                checkoutUrl.includes(`survey/fb-checkout?`) ||
                checkoutUrl.includes(`wmbt/checkout?`)
            ) {
                cy.filloutVsSurveyCheckout(clientEmail);
            } else if (checkoutUrl.includes(`/sn-checkout1`)) {
                cy.logStep('LE-VS Secure Checkout Order Form');
                cy.filloutVsSecureCheckout(clientEmail);
            } else if (checkoutUrl.includes(`/checkout-fle?`)) {
                cy.logStep('Checkout FLE Order Form');
                cy.filloutVsCheckoutFle(clientEmail);
            } else if (checkoutUrl.includes(`/sn-checkout`)) {
                cy.filloutVsEcomCheckout(
                    clientEmail,
                    staticTestData.firstName,
                    staticTestData.lastName,
                    staticTestData.address,
                    staticTestData.city,
                    staticTestData.state,
                    staticTestData.postalCode,
                    staticTestData.phoneNumber
                );
            } else if (checkoutUrl.includes(`/order-form/`)) {
                cy.logStep('VS Order Form');
                cy.filloutLegacyVsOrderForm(
                    clientEmail,
                    staticTestData.clientName,
                    staticTestData.phoneNumber
                );
            } else {
                cy.fillInSurveyOrderForm(
                    `${staticTestData.firstName} ${staticTestData.lastName}`,
                    clientEmail,
                    staticTestData.phoneNumber,
                    staticTestData.postalCode
                );
            }
        });
    });
};
