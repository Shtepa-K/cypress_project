import { test, expect } from '@playwright/test';

test('test', async ({ page }) => {
  await page.goto('https://playwright.dev/docs/intro');
  await page.getByRole('heading', { name: 'Installation' }).click();
  await page.locator('.tabs > li:nth-child(2)').first().click();
});