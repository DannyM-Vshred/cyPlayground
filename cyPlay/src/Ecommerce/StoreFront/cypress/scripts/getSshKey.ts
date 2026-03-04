import * as fs from 'fs';

/* Script to retrieve the SSH key needed to settle transactions from a file.
 * Add this script as in the example below in the Cypress .config.ts file.
 * @example
 * on('task', {
 *     getSshKey;
 * });
 */
export const getSshKey = (): any => {
    let filePath: string;

    if (fs.existsSync('/root/.ssh/id_rsa_56822b6918f8c98714b70c3afbea8bde')) {
        filePath = '/root/.ssh/id_rsa_56822b6918f8c98714b70c3afbea8bde';
    } else {
        filePath = './tests_ssh_key';
    }

    return filePath;
};
