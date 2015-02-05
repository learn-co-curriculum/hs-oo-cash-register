---
  tags: ruby, bash, git, kids, oo, oop, object-orientation
  languages: ruby, git, bash
  level: 1
---

### Cha Ching!
<img src="https://after-school-assets.s3.amazonaws.com/cash_register.gif" alt="Cash Register" height="200" align="right" hspace="20"> You're going to create an object-oriented cash register than can add items of varying quantities and prices, calculate discounts, and keep track of what's been added to it.

### Instructions
Follow along with the specs in `spec/cash_register_spec.rb`. Remember to run your specs in the terminal by entering `rspec` from the main directory of this lab.

Write your code in the `cash_register.rb` file.

Take it one step at a time, peeps!

### After You Pass All The Tests...
Build out **four more methods** of your choice for your cash register. Think about what functionality would be useful. Maybe you want to build out a `give_change` method that will give a customer change if they don't have the exact amount of money for an item. Or maybe you want the register to print a receipt by `puts`ing the details of the transaction. How would you build a `print_receipt` method? 

### Bonus
Build a method called `void_last_transaction` that will remove the last transaction from the total. You'll need to make an additional attribute accessor and keep track of that last transaction amount somehow. Hint: in what method of the class are you working with an individual item?

***And that's all folks!*** You've successfully built an object-oriented cash register!

### Resources
* [Codecademy](http://www.codecademy.com/dashboard) - [Banking on Ruby](http://www.codecademy.com/courses/ruby-beginner-en-32cN3/0/1)
