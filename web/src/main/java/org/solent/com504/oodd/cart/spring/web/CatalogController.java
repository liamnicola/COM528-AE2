/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.solent.com504.oodd.cart.spring.web;

import java.io.PrintWriter;
import java.io.StringWriter;
import java.util.List;
import java.util.ArrayList;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.solent.com504.oodd.cart.model.dto.ShoppingItem;
import org.solent.com504.oodd.cart.model.dto.User;
import org.solent.com504.oodd.cart.model.dto.UserRole;
import org.solent.com504.oodd.cart.model.service.ShoppingCart;
import org.solent.com504.oodd.cart.model.service.ShoppingService;
import org.solent.com504.oodd.cart.web.WebObjectFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
/**
 *
 * @author liamn
 */
@Controller
@RequestMapping("/")
public class CatalogController {
    
    final static Logger LOG = LogManager.getLogger(CatalogController.class);
    
    @Autowired
    ShoppingService shoppingService = null;
    
    @Autowired
    ShoppingCart shoppingCart = null;
    
    private User getSessionUser(HttpSession session) {
        User sessionUser = (User) session.getAttribute("sessionUser");
        if (sessionUser == null) {
            sessionUser = new User();
            sessionUser.setUsername("anonymous");
            sessionUser.setUserRole(UserRole.ANONYMOUS);
            session.setAttribute("sessionUser", sessionUser);
        }
        return sessionUser;
    }

    @RequestMapping(value = "/catalog", method = {RequestMethod.GET, RequestMethod.POST})
    public String cataloglist(@RequestParam(value = "name", required = false) String name,
            @RequestParam(value = "itemUuid", required = false) String itemUuid,
            @RequestParam(value = "itemName", required = false) String itemName,
            @RequestParam(value = "action", required = false) String action,
            @RequestParam(value = "stock", required = false) Integer stock,
            @RequestParam(value = "price", required = false) Double price,
            @RequestParam(value = "username", required = false) String username,
            Model model,
            HttpSession session) {
        String errorMessage = "";
        String message = "";
        
        List<ShoppingItem> availableItems = new ArrayList();

        User user = getSessionUser(session);
        model.addAttribute("user", user);

        if("addNewItem".equals(action)) {
            if (name == null || name.trim().isEmpty()) {
                errorMessage = "Item Name is required";
            } else {
                try{
                ShoppingItem item = new ShoppingItem();
                item.setName(name);
                item.setPrice(price);
                
                item = shoppingService.addNewItem(item);
                message = "New item has been created" + item.getName();
                }
                catch(Exception ex) {
                    errorMessage = "Item could not be created" + ex.getMessage();
                }
            }
        }
        if (user.getUserRole() == UserRole.ADMINISTRATOR){
            availableItems = shoppingService.getAvailableItems();
        }
        
        int availableItemsSize = availableItems.size();
        model.addAttribute("availableItems", availableItems);
        model.addAttribute("availableItemSize", availableItemsSize);
        model.addAttribute("selectedPage", "catalog");
        model.addAttribute("message", message);
        model.addAttribute("errorMessage", errorMessage);
        
        return "catalog";

    }
}


