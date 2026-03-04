import { generateOTP } from 'Ecommerce/StoreFront/cypress/scripts';
import { setupBrowserBeforeRun } from './setupBrowserBeforeRun';
import { checkIfFileExists } from './checkIfFileExists';
import { deleteFile } from './deleteFile';

export { setupBrowserBeforeRun, checkIfFileExists, deleteFile, generateOTP };
