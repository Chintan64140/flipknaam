import fs from 'fs';
import path from 'path';
import { fileURLToPath } from 'url';

const __filename = fileURLToPath(import.meta.url);
const __dirname = path.dirname(__filename);

const productsPath = path.join(__dirname, '..', 'api', 'products.json');

const MIN_PRICE = 150;
const MAX_PRICE = 299;

function getRandomPrice(min, max) {
  return (Math.floor(Math.random() * (max - min + 1)) + min).toFixed(2);
}

function randomizePrices() {
  if (!fs.existsSync(productsPath)) {
    console.error(`Error: Products file not found at ${productsPath}`);
    process.exit(1);
  }

  const rawData = fs.readFileSync(productsPath, 'utf8');
  let products;
  try {
    products = JSON.parse(rawData);
  } catch (err) {
    console.error('Error parsing JSON from products.json:', err);
    process.exit(1);
  }

  if (!Array.isArray(products)) {
    console.error('Error: products.json is not an array');
    process.exit(1);
  }

  let updatedCount = 0;
  products.forEach((product) => {
    const newPrice = getRandomPrice(MIN_PRICE, MAX_PRICE);
    product.selling_price = newPrice;
    updatedCount++;
  });

  fs.writeFileSync(productsPath, JSON.stringify(products, null, 2) + '\n', 'utf8');

  console.log(`Successfully updated ${updatedCount} products with random prices between ₹${MIN_PRICE} and ₹${MAX_PRICE}.`);

  const numericPrices = products.map((p) => Number(p.selling_price));
  const minObserved = Math.min(...numericPrices);
  const maxObserved = Math.max(...numericPrices);
  console.log(`Verification: Min Price = ₹${minObserved}, Max Price = ₹${maxObserved}`);
}

randomizePrices();
