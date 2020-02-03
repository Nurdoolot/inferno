class CoffeeMachine():
    def __init__(self):
        self.milk = 1000
        self.coffee = 1000
        self.sugar = 1000


    def __subtract_milk(self, milk):
        return self.milk - milk

    def __subtract_coffee(self, coffee):
        return self.coffee - coffee
    
    def __subtract_sugar(self, sugar):
        return self.sugar - sugar



    def make_coffee(self, milk, coffee, sugar):
        if self.milk >= milk and self.coffee >= coffee and self.sugar >= sugar:
            self.milk = self.__subtract_milk(milk)
            self.coffee = self.__subtract_coffee(coffee)
            self.sugar = self.__subtract_sugar(sugar)
        else:
            milk = self.__subtract_milk(milk)
            coffee = self.__subtract_coffee(coffee)
            sugar = self.__subtract_sugar(sugar)

            if milk < 0:
                print(f"Не хватает, {milk*-1} молока.")

            if coffee < 0:
                print(f"Не хватает, {coffee*-1} молока.")

            if sugar < 0:
                print(f"Не хватает, {sugar*-1} молока.")




Coffee = CoffeeMachine()
print(Coffee.milk)
print(Coffee.coffee)
print(Coffee.sugar)
Coffee.make_coffee(int(input()), int(input()), int(input()))
print(Coffee.milk)
print(Coffee.coffee)
print(Coffee.sugar)




