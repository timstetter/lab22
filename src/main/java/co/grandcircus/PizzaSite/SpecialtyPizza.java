package co.grandcircus.PizzaSite;

import java.util.ArrayList;
import java.util.List;

public class SpecialtyPizza {

	private String name;
	private double price;

	public static List<String> toppings = populateToppings();
	public static List<SpecialtyPizza> specialPizzas = popPizza();

	public SpecialtyPizza(String name, double price) {
		super();
		this.name = name;
		this.price = price;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public double getPrice() {
		return price;
	}

	public void setPrice(double price) {
		this.price = price;
	}

	public static List<SpecialtyPizza> getPizzas() {
		return specialPizzas;
	}

	public static List<SpecialtyPizza> popPizza() {
		List<SpecialtyPizza> returnPizza = new ArrayList<>();
		returnPizza.add(new SpecialtyPizza("Meat Lover's Pizza", 14.50));
		returnPizza.add(new SpecialtyPizza("Veggie Lover's Pizza", 12.00));
		returnPizza.add(new SpecialtyPizza("BBQ Chicken Pizza", 13.00));
		returnPizza.add(new SpecialtyPizza("Hawaiian Pizza", 14.00));
		returnPizza.add(new SpecialtyPizza("Supreme Pizza", 15.00));
		return returnPizza;

	}

	public static List<String> getToppings() {
		return toppings;
	}

	public static List<String> populateToppings() {
		List<String> returnToppings = new ArrayList<>();
		returnToppings.add("Pepperoni");
		returnToppings.add("Ham");
		returnToppings.add("Bacon");
		returnToppings.add("Sausage");
		returnToppings.add("Onion");
		returnToppings.add("Mushroom");
		returnToppings.add("Green Pepper");
		returnToppings.add("Black Olives");
		returnToppings.add("Pineapple");
		returnToppings.add("Chicken");
		return returnToppings;

	}

}
