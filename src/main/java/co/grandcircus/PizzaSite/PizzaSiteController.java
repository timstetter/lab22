package co.grandcircus.PizzaSite;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class PizzaSiteController {

	@GetMapping("/")
	public String index(Model model) {
		model.addAttribute("pizzas", SpecialtyPizza.getPizzas());
		return "index";
	}

	@GetMapping("/specialty/{id}")
	public String specialty(@PathVariable Integer id, Model model) {

		SpecialtyPizza pizza = SpecialtyPizza.getPizzas().get(id);
		model.addAttribute("pizza", pizza);
		return "specialty";
	}

	@GetMapping("/custom")
	public String custom(Model model) {
		model.addAttribute("toppings", SpecialtyPizza.getToppings());
		return "custom";
	}

	@GetMapping("/review")
	public String review() {
		return "review";
	}

	@PostMapping("/submitreview")
	public String order(@RequestParam String name, @RequestParam String comment,
			@RequestParam(defaultValue = "5") String rating, Model model) {
		model.addAttribute("name", name);
		model.addAttribute("comment", comment);
		model.addAttribute("rating", rating);
		return "submitreview";
	}

	@PostMapping("/customorder")
	public String order(@RequestParam String size, @RequestParam String toppings,
			@RequestParam(required = false) String specialinstructions,
			@RequestParam(required = false) boolean glutenfree, Model model) {
		model.addAttribute("size", size);
		model.addAttribute("toppings", toppings);
		model.addAttribute("specialinstructions", specialinstructions);
		model.addAttribute("glutenfree", glutenfree);
		int toppingsAsInt = 0;
		try {
			toppingsAsInt = Integer.parseInt(toppings);
		} catch (NumberFormatException e) {

		}
		double price = 0.0;
		if ("Small".equals(size)) {
			price += 7.0;
			price += toppingsAsInt * 0.50;
		} else if ("Medium".equals(size)) {
			price += 10.0;
			price += toppingsAsInt * 1.00;
		} else if ("Large".equals(size)) {
			price += 12.00;
			price += toppingsAsInt * 1.25;
		}
		if (glutenfree) {
			price += 2.0;
		}
		model.addAttribute("price", price);
		return "customorder";
	}
}
