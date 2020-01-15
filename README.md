# project1
<b>Cocktail Shop Inventory</b>

Project Brief:
Shop Inventory<br>
Build an app which allows a shopkeeper to track their shop's inventory. This is not an app which the customer will see, it is an admin/management app for the shop workers.

MVP <br>
The inventory should track individual products, including a name, description, stock quantity, buying cost, and selling price. <br>
The inventory should track manufacturers, including a name and any other appropriate details. <br>
The shop can sell anything you like, but you should be able to create, edit and delete manufacturers and products separately.
This might mean that it makes more sense for a car shop to track makes and models of cars. Or a bookstore might sell books by author, or by publisher, and not by manufacturer. You are free to name classes and tables as appropriate to your project.
Show an inventory page, listing all the details for all the products in stock in a single view.<br>
As well as showing stock quantity as a number, the app should visually highlight "low stock" and "out of stock" items to the user.<br>
Inspired by eBay, Amazon (back end only), Magento

Possible Extensions <br>
Calculate the markup on items in the store, and display it in the inventory
Filter the inventory list by manufacturer. For example, provide an option to view all books in stock by a certain author.
Categorise your items. Books might be categorised by genre (crime, horror, romance...) and cars might be categorised by type (SUV, coupé, hatchback...). Provide an option to filter the inventory list by these categories.


<b>Project Setup:</b>
To run the project, open the Terminal and carry out the following steps: <br>
1.) Navigate to the 'project_1' directory. <br>
2.) Type 'psql -d cocktail_shop_inventory -f db/cocktail_shop_inventory.sql' to run the SQL file. <br>
3.) Type 'ruby db/seeds.rb' to run the seeds file Note: Type '!!!' to exit 'pry'. <br>
4.) Type 'ruby cocktail_shop_app.rb' to run the main app. <br>

Once sucessfully running, you will be given a port that is being used. <br>

Note: The port number in the below example is '4567' - please change to the port you are provided in the previous step. Open a browser or new tab and type 'http://localhost:4567'
The home page of the app will display.
