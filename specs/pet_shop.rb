
# def test_pet_shop_name
#   name = pet_shop_name(@pet_shop)
#   assert_equal("Camelot of Pets", name)
# end

def pet_shop_name(pet_shop)
  return pet_shop[:name]
end

# def test_total_cash
#   sum = total_cash(@pet_shop)
#   assert_equal(1000, sum)
# end


def total_cash(pet_shop)
  return pet_shop[:admin][:total_cash] 
end

# def add_or_remove_cash__add
#   add_or_remove_cash(@pet_shop,10)
#   cash = total_cash(@pet_shop)
#   assert_equal(1010, cash)
# end

def add_or_remove_cash(pet_shop, cash)
  pet_shop[:admin][:total_cash]  += cash #Adding or removing cash 
  return pet_shop[:admin][:total_cash] 
end

  # def test_pets_sold
  #   sold = pets_sold(@pet_shop)
  #   assert_equal(0, sold)
  # end

def pets_sold(pet_shop)
  return pet_shop[:admin][:pets_sold]
end

  # def test_increase_pets_sold
  #   increase_pets_sold(@pet_shop,2)
  #   sold = pets_sold(@pet_shop)
  #   assert_equal(2, sold)
  # end

def increase_pets_sold(pet_shop, number_of_pets)
pet_shop[:admin][:pets_sold] += number_of_pets # adding 2 pets sold
return pet_shop[:admin][:pets_sold]
end


  # def test_stock_count
  #   count = stock_count(@pet_shop)
  #   assert_equal(6, count)
  # end

def stock_count(pet_shop)
  return pet_shop[:pets].length
end

  # def test_all_pets_by_breed__found
  #   pets = pets_by_breed(@pet_shop, "British Shorthair")
  #   assert_equal(2, pets.count)
  # end

def pets_by_breed(pet_shop, breed)
  pets = pet_shop[:pets]
  counter = []

  for pet in pets
    if breed == pet[:breed]
      counter.push(pet) 
    end
  end

  return counter
end

  # def test_all_pets_by_breed__not_found
  #   pets = pets_by_breed(@pet_shop, "Dalmation")
  #   assert_equal(0, pets.count)
  # end

  def pets_by_breed(pet_shop, breed)
    pets = pet_shop[:pets]
    counter = []

    for pet in pets
      if breed == pet[:breed]
        counter.push(pet) 
      end
    end

    return counter
  end

  # def test_find_pet_by_name__returns_pet
  #   pet = find_pet_by_name(@pet_shop, "Arthur")
  #   assert_equal("Arthur", pet[:name])
  # end

def find_pet_by_name(pet_shop, name)
  pets = pet_shop[:pets]
    for pet in pets 
      if name == pet[:name]

        return  pet
      end
    end

      return nil
end



  # def test_find_pet_by_name__returns_nil
  #   pet = find_pet_by_name(@pet_shop, "Fred")
  #   assert_equal(nil, pet)
  # end

  def find_pet_by_name(pet_shop, name)
    pets = pet_shop[:pets]
      for pet in pets 
        if name == pet[:name]

          return  pet
        end
      end

        return nil
  end

  # def test_remove_pet_by_name
  #   remove_pet_by_name(@pet_shop, "Arthur")
  #   pet = find_pet_by_name(@pet_shop,"Arthur")
  #   assert_equal(nil, pet)
  # end

def remove_pet_by_name(pet_shop, name)
    pets = pet_shop[:pets]
    for pet in pets
      if name == pet[:name]
        #pet_shop.delete(:pets) deletes pets array from pet shop hash
        #pet_shop[:pets] is an array and delete accepts what you want to delete
          pet_shop[:pets].delete(pet)
        return
      end
    end
    return nil 
end 

  # def test_add_pet_to_stock
  #   add_pet_to_stock(@pet_shop, @new_pet)
  #   count = stock_count(@pet_shop)
  #   assert_equal(7, count)
  # end

def add_pet_to_stock(pet_shop, name)
  count = stock_count(@pet_shop)
  pet_shop[:pets] << @new_pet
  return pet_shop[:pets].length
end 


  # def test_customer_pet_count
  #   count = customer_pet_count(@customers[0])
  #   assert_equal(0, count)
  # end
  

  def customer_pet_count(customers)
    return customers[:pets].count
  end


  # def test_add_pet_to_customer
  #   customer = @customers[0]
  #   add_pet_to_customer(customer, @new_pet)
  #   assert_equal(1, customer_pet_count(customer))
  # end

def add_pet_to_customer(customers, new_pet)
  customers[:pets] << new_pet
  return customers[:pets].count

end 


  # # OPTIONAL

  # def test_customer_can_afford_pet__insufficient_funds
  #   customer = @customers[1]
  #   can_buy_pet = customer_can_afford_pet(customer, @new_pet)
  #   assert_equal(false, can_buy_pet)
  # end

  # def test_customer_can_afford_pet__sufficient_funds
  #   customer = @customers[0]
  #   can_buy_pet = customer_can_afford_pet(customer, @new_pet)
  #   assert_equal(true, can_buy_pet)
  # end

  # #These are 'integration' tests so we want multiple asserts.
  # #If one fails the entire test should fail
  # def test_sell_pet_to_customer__pet_found
  #   customer = @customers[0]
  #   pet = find_pet_by_name(@pet_shop,"Arthur")

  #   sell_pet_to_customer(@pet_shop, pet, customer)

  #   assert_equal(1, customer_pet_count(customer))
  #   assert_equal(1, pets_sold(@pet_shop))
  #   assert_equal(1900, total_cash(@pet_shop))
  # end

  # def test_sell_pet_to_customer__pet_not_found
  #   customer = @customers[0]
  #   pet = find_pet_by_name(@pet_shop,"Dave")

  #   sell_pet_to_customer(@pet_shop, pet, customer)

  #   assert_equal(0, customer_pet_count(customer))
  #   assert_equal(0, pets_sold(@pet_shop))
  #   assert_equal(1000, total_cash(@pet_shop))
  # end

  # def test_sell_pet_to_customer__insufficient_funds
  #   customer = @customers[1]
  #   pet = find_pet_by_name(@pet_shop,"Arthur")

  #   sell_pet_to_customer(@pet_shop, pet, customer)

  #   assert_equal(0, customer_pet_count(customer))
  #   assert_equal(0, pets_sold(@pet_shop))
  #   assert_equal(1000, total_cash(@pet_shop))
  # end



