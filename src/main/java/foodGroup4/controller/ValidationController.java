package foodGroup4.controller;

import foodGroup4.common.validation.CustomerValidator;
import foodGroup4.entity.Khachhang;
import foodGroup4.service.CustomerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
public class ValidationController {

    @Autowired
    private CustomerService customerService;

    @Autowired
    private CustomerValidator customerValidator;

    @Autowired
    private BCryptPasswordEncoder passwordEncoder;

    @RequestMapping(value = "/register", method = RequestMethod.GET)
    public String getRegister(Model model) {

        model.addAttribute("customerForm", new Khachhang());
        return "register";
    }

    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public String getLogin(Model model) {
        return "login";
    }

    @RequestMapping(value = "/register", method = RequestMethod.POST)
    public String postRegister(
            @ModelAttribute(value = "customerForm") Khachhang customer,
            BindingResult bindingResult,
            Model model,
            RedirectAttributes redirectAttributes) throws Exception {

        System.out.println(customer.getTen());
        customerValidator.validate(customer, bindingResult);

        if (bindingResult.hasErrors()) {
            return "register";
        }

        // Hash password
        customer.setPassword(passwordEncoder.encode(customer.getPassword()));

        customerService.save(customer);

        redirectAttributes.addFlashAttribute("message", "Tạo tài khoản thành công, mời bạn đăng nhập");
        return "redirect:/login";
    }
}
