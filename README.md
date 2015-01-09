---
  tags: ruby, bash, git, kids, oo, oop, object-orientation
  languages: ruby, git, bash
  level: 1
  type: walk-through
---

##Cha-Ching!

<img src="https://s3.amazonaws.com/after-school-assets/colorful-cash-register.gif" alt="Cash Register" height="200" align="right" hspace="20">

We've become masters of object-orientation, even stepped up to the plate and built a payment app, our very only e-cash register. Let's recap how we did it!

### The point of it all

The goal of this project is to build an object-oriented cash register app to be used by the cashier in a store.

### The steps

1. Create a CashRegister class
2. Create an initialize method that sets the values for a total and items sold.
3. Create and build methods that allows a cashier to sell an item, return an item, see all the sold items, and check the total dollar amount sold all day

### Create a new file

In terminal, enter

```bash
  touch whatever_you_want_to_name_your_file
```

In this case, we entered `touch cash_register.rb`

### Create a class

```ruby
  class CashRegister
    #body of class goes here
  end
```

Because we are creating a cash register app, we're essentially building the blue print for a what thousands of digital cash registers look like and how they operate. 

We define a new class with the keyword `class` followed by the name of the class, `CashRegister`. We use camel case for the name of our class. Camel case mean that the first letter of every word starts with a capital letter, sort of like the humps on a camel's back.

We use the keyword `end` to indicate the end of our class.

### Creating a new instance

```ruby
  my_register = CashRegister.new
```
You always create a new instance of your class outside of the class itself. In this example, I am creating a new instance of my `CashRegister` class, and storing it in the varibale `my_register`. 

We call the `new` method on the `CashRegister` class to create a new instance.

### Initialize Method
```ruby
  def initialize
    @total = 100
    @items = []
    user_choice
  end
```

**This method is defined in the body of the class**

The initialize method gets automatically called whenever the new method gets called. So any time we enter `CashRegister.new`, the initialize method gets triggered. We never manually call initialize.

In the body of this method, we create two instance variables, `@total` and `@items`. 

`@total` is an attribute that describes the total amount of money in the cash register in the beginning of the day. We set this attribute equal to 100, so that we start with $100 dollars.

`@items` is an attribute that stores all of the items sold in the store that day. We set this attribute to store an empty array on initialization because at the beginning of each day, nothing has been sold.

At the end of this method, we call `user_choice` which is our menu method.

### Menu

```ruby
  def user_choice
    puts "What would you like to do first Sell Item, Return Item, See Sold Items, Check Total Amount Sold"
    choice = gets.chomp.downcase
    if choice == "sell item"
      sell_item
    elsif choice == "return item"
      return_item
    elsif choice == "see sold items"
      see_sold_items
    elsif choice == "check total amount sold"
      check_total
    else 
      puts "You didn't enter a valid option"
      user_choice
    end
  end
```

**This method is defined in the body of the class**

The `user_choice` method is a menu that triggers program flow based on what a cashier would like to do. 

First, this method prompts a cashier Next, the cashier's selection is stored in a variable `choice` using `gets.chomp.downcase`.

We use an if-statement and the equality operator (`==`), to check what the cashier entered matches a possible action. Let's say our cashier entered `see sold items`, our program would skip down to the third branch of the if-statement and then call the `see_sold_items` method.

If the cashier enters an option that isn't valid, like `eat cake`, the `else` kicks in and prints out `You didn't enter a valid option`. The `user_choice` method is then called. 

WAIT, we're calling a method inside that exact method?! This is actually a really complex programming concept called *recursion*. Recursion is basically what we just did, it's when a method calls itself. We're not going to get too much into what recursion in this class, but you should be impressed with yourself!

### Sell an item

```ruby
  def sell_item
    puts "What item is being purchased"
    item = gets.chomp
    price = rand(1..20)
    puts "This item costs #{price}. How many #{item}s is your customer purchasing?"
    quantity = gets.chomp.to_i
    total_cost = quantity * price
    puts "Your total is #{total_cost}. How much money are they handing over?"
    amount_giving = gets.chomp.to_i
    change = amount_giving - total_cost
    puts "Here is your #{item}(s). The change is $#{change}"
    @total += total_cost
    quantity.times do 
      @items << item
    end
    user_choice
  end
```
**This method is defined in the body of the class**

The `sell_item` method first prompts the cashier to enter what item is being sold. We store that item in a variable `item`. 

We then generate a random price between 1 and 20 for this item, using the `rand` method, `rand(1..20)`. `1..20` represents a range of numbers, the smallest being 1 and the largest being 20. We store this number in a variable called `price`. 

We then tell the cashier the price, and ask them how many of that item they're selling. We store the number in a variable called `quantity`. 

We generate the total amount the customer owes by doing `quantity * price`. Then we prompt the cashier to enter how much money the customer is handing them and store it in a variable `amount_giving`. `amount_giving - total_cost` give us the change the cashier should give the customer.We then change the `@total` attribute, by adding `total_cost`.

Then, we have to add the item(s) the customer bought to the `@items` array. Let's say a customer bought 5 puppies. We would need to add `puppy` five times to `@items`. 

```ruby
  quantity.times do 
    @items << item
  end
```

`quantity` is a variable that stores an integer, in the case of our example, storing 5. Calling `quantity.times do`, is like saying, hey ruby do this thing 5 times. In this case, we're putting the item the customer bought into the `@items` array, five times.








