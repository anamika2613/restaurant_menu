
tea = File.open("./app/assets/images/tea.jpeg")
coffee  = File.open("./app/assets/images/coffee.PNG")
n  = File.open("./app/assets/images/noodles.jpg")
r  = File.open("./app/assets/images/rice.jpg")
para  = File.open("./app/assets/images/paratha.jpg")
s  = File.open("./app/assets/images/salad.jpeg")
rolls  = File.open("./app/assets/images/rolls.jpg")
pi  = File.open("./app/assets/images/pizza.jpg")
Course.create(name: "noodles", image: n)
Course.create(name: "rice", image: r)
Course.create(name: "paratha", image: para)
Course.create(name: "salad", image: s)
Course.create(name: "rolls", image: rolls)
Course.create(name: "pizza", image: pi)
Course.create(name: "tea", image: tea)
Course.create(name: "coffee", image: coffee)


