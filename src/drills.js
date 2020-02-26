'use strict'; 
require('dotenv').config();
const knex = require('knex');

const knexInstance = knex({
  client:'pg',
  connection: process.env.DB_URL
});

function searchShoppingList(searchTerm) {
  knexInstance
    .select('name')
    .from('shopping_list')
    .where('name', 'ILIKE', `%${searchTerm}%`)
    .then(result => {
      console.log(result);
    });

}
// searchShoppingList('dog');

function paginate(pageNum) {
  const productsPerPage = 6;
  const offset = productsPerPage * (pageNum -1);
  knexInstance  
    .select('*')
    .from('shopping_list')
    .limit(productsPerPage)
    .offset(offset)
    .then(result => {
      console.log(result);
    });
}
// paginate(4);
function getItemsAfterDate(daysAgo) {
  knexInstance
    .from('shopping_list')
    .select('*')
    .where(
      'date_added',
      '>',
      knexInstance.raw('now() - \'?? days\'::INTERVAL', daysAgo)
    )
    .then(result => {
      console.log(result);
    });
}
// getItemsAfterDate(4);

function totalCost() {
  knexInstance
    .select('category')
    .sum('price as total_cost')
    .from('shopping_list')
    .groupBy('category')
    .then(result => {
      console.log(result);
    });
}

totalCost();