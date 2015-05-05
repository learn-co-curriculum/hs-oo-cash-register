### Cha Ching!

Amazon needs a new payment app. You're a Director of Engineering at Amazon, and the CTO just came to you and asked you to rewrite their payment app in time for their Christmas rush. You now need to build an app that can support 426 purchases per second. We've given you


### Instructions
Follow along with the specs in `spec/amazon_transaction_spec.rb`. Remember to run your specs in the terminal by entering `rspec` from the main directory of this lab.

Write your code in the `amazon_transaction.rb` file.

Take it one step at a time, peeps!

### After You Pass All The Tests...
Build out **four more methods** of your choice for your cash register. Think about what functionality would be useful. Maybe you want to build out a `give_change` method that will give a customer change if they don't have the exact amount of money for an item. Or maybe you want the register to print a receipt by `puts`ing the details of the transaction. How would you build a `print_receipt` method? 

### Bonus
Build a method called `void_last_transaction` that will remove the last transaction from the total. You'll need to make an additional attribute accessor and keep track of that last transaction amount somehow. Hint: in what method of the class are you working with an individual item?

***And that's all folks!*** You've successfully built an object-oriented cash register!

### Resources
* [Codecademy](http://www.codecademy.com/dashboard) - [Banking on Ruby](http://www.codecademy.com/courses/ruby-beginner-en-32cN3/0/1)
