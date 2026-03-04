Feature: Staging Sculptnation - Survey-GA - Female Toned Skinny
    Background: Load test data
        Given The user loads the LE test data

describe('Everflow URL Regex Match Test', () => {
const testUrl = 'https://www.vpggt8trk.com/sdk/conversion?sec_ch_ua_platform=macOS';

const oldRegexList = [
/^https:\/\/.*\.sculptnation\.com/,
/^https:\/\/.*\.vshred\.com/,
/^https:\/\/.*\.vpggt8trk\.com/ // ← This might be the buggy one
];

const newRegexList = [
/^https:\/\/.*\.sculptnation\.com/,
/^https:\/\/.*\.vshred\.com/
// ← No Everflow domain included
];

it('should match Everflow URL with old regex list', () => {
const matchesOld = oldRegexList.some(regex => regex.test(testUrl));
expect(matchesOld).to.be.true;
cy.log('Old regex matched:', matchesOld);
});

it('should NOT match Everflow URL with new regex list', () => {
const matchesNew = newRegexList.some(regex => regex.test(testUrl));
expect(matchesNew).to.be.false;
cy.log('New regex matched:', matchesNew);
});
});
