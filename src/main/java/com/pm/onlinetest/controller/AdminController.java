package com.pm.onlinetest.controller;

import java.util.List;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.pm.onlinetest.domain.User;
import com.pm.onlinetest.domain.Authority;
import com.pm.onlinetest.domain.Category;
import com.pm.onlinetest.domain.Student;
import com.pm.onlinetest.domain.Subcategory;
import com.pm.onlinetest.service.AuthorityService;
import com.pm.onlinetest.service.CategoryService;
import com.pm.onlinetest.service.StudentService;
import com.pm.onlinetest.service.SubCategoryService;
import com.pm.onlinetest.service.UserService;

/**
 * Handles requests for the application home page.
 */
@Controller
@RequestMapping("/admin")
public class AdminController {

	private static final Logger logger = LoggerFactory.getLogger(AdminController.class);

	@Autowired
	UserService userService;
	@Autowired
	AuthorityService authorityService;
	@Autowired
	StudentService studentService;
	@Autowired
	CategoryService categoryService;
	@Autowired
	SubCategoryService subCategoryService;
	

	@RequestMapping(value = "/home", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		return "admin-home";
	}
	
	@RequestMapping(value = "/users", method = RequestMethod.GET)
	public String getUsers(Locale locale, Model model) {
		List<User> users = userService.findAllEnabled();
		model.addAttribute("users", users);
		return "users";
	}

	@RequestMapping(value = "/register", method = RequestMethod.GET)
	public String register(@ModelAttribute("loginUser") User user) {
		return "register";
	}

	@RequestMapping(value = "/register", method = RequestMethod.POST)
	public String add(@Valid @ModelAttribute("loginUser") User user, BindingResult result,
			RedirectAttributes redirectAttr) {
		if (result.hasErrors()) {
			return "register";
		}

		userService.save(user);
		redirectAttr.addFlashAttribute("success", "Successfully added new user!");
		return "redirect:/admin/register";
	}

	@RequestMapping(value = "/registerStudent", method = RequestMethod.GET)
	public String getStudent(@ModelAttribute("loginUser") Student student) {
		return "registerStudent";
	}

	@RequestMapping(value = "/registerStudent", method = RequestMethod.POST)
	public String registerStudent(@ModelAttribute("loginUser") Student student, BindingResult result,
			RedirectAttributes redirectAttr) {
		if (result.hasErrors()) {
			return "registerStudent";
		}
		if(null != studentService.findByStudentId(student.getStudentId())){
			redirectAttr.addFlashAttribute("msgType", "Error");
			return "redirect:/admin/registerStudent";
		}else{
			studentService.save(student);
			redirectAttr.addFlashAttribute("msgType", "Success");
			return "redirect:/admin/registerStudent";
		}
	}

	@RequestMapping(value = { "/deleteUser" }, method = RequestMethod.POST)
	public void DeleteUser(HttpServletRequest request) {
		String id = request.getParameter("userid").toString();
		userService.softDelete(Integer.parseInt(id));		
	}

	@RequestMapping(value = "/students", method = RequestMethod.GET)
	public String getStudents(Model model) {
		List<Student> students = studentService.findAllEnabled();
		model.addAttribute("students", students);
		return "students";
	}

	@RequestMapping(value = "/assign", method = RequestMethod.GET)
	public String assignCoach(Model model) {
		List<Student> students = studentService.findAll();
		List<User> coaches = userService.findByAuthority("ROLE_COACH");

		model.addAttribute("students", students);
		model.addAttribute("coaches", coaches);

		return "assignCoach";
	}
	
	@RequestMapping(value = "/categories", method = RequestMethod.GET)
	public String getCategory(Model model) {
		List<Category> categories = categoryService.findAllEnabled();
		model.addAttribute("categories", categories);
		return "categories";
	}
	
	@RequestMapping(value = "/createCategory", method = RequestMethod.GET)
	public String createCategory(@ModelAttribute("Category") Category category) {
		return "createCategory";
	}
	
	@RequestMapping(value = "/createCategory", method = RequestMethod.POST)
	public String createCategoryPost(@ModelAttribute("Category") Category category, BindingResult result,
			RedirectAttributes redirectAttr) {
		if (result.hasErrors()) {
			return "createCategory";
		}
		
		categoryService.save(category);
		redirectAttr.addFlashAttribute("success", "Successfully added new category!");
		return "redirect:/admin/createCategory";
	}
	
	@RequestMapping(value = "/subCategories", method = RequestMethod.GET)
	public String getSubCategory(Model model) {
		List<Subcategory> subCategories = subCategoryService.findAllEnabled();
		model.addAttribute("subCategories", subCategories);
		return "subCategories";
	}
	
	@RequestMapping(value = { "/deleteCategory" }, method = RequestMethod.POST)
	public void DeleteCategory(HttpServletRequest request) {
		String id = request.getParameter("id").toString();
		categoryService.softDelete(Integer.parseInt(id));		
	}
	
	@RequestMapping(value = "/createSubCategory", method = RequestMethod.GET)
	public String createSubCategory(@ModelAttribute("Subcategory") Subcategory subcategory, Model model) {
		List<Category> categories = categoryService.findAllEnabled();
		model.addAttribute("categories", categories);
		return "createSubCategory";
	}
	
	@RequestMapping(value = "/createSubCategory", method = RequestMethod.POST)
	public String createSubCategoryPost(@ModelAttribute("Subcategory") Subcategory subcategory, BindingResult result,
			RedirectAttributes redirectAttr) {
		if (result.hasErrors()) {
			return "createSubCategory";
		}
		
		subcategory.setCategory(categoryService.findOne(subcategory.getCategoryId()));
		subCategoryService.save(subcategory);
		redirectAttr.addFlashAttribute("success", "Successfully added new Subcategory!");
		return "redirect:/admin/createSubCategory";
	}
	
	@RequestMapping(value = { "/deleteSubCategory" }, method = RequestMethod.POST)
	public void DeleteSubCategory(HttpServletRequest request) {
		String id = request.getParameter("id").toString();
		subCategoryService.softDelete(Integer.parseInt(id));		
	}
		
//	@ResponseBody
//	@RequestMapping(value = "/assign", method = RequestMethod.POST)
//	public String getAssignCoach(Locale locale, Model model, HttpServletRequest request,
//			RedirectAttributes redirectAttr) {
//		String coachId = request.getParameter("coachId").toString();
//		String studentId = request.getParameter("studentId").toString();
//		User coach = userService.findByUserId(Integer.parseInt(coachId));
//		Student student = studentService.findByStudentId(studentId);
//		Student_Record studentRecord = new Student_Record();
//		studentRecord.setCoach(coach);
//		studentRecord.setStudent(student);
//		studentRecordService.save(studentRecord);
//
//		// redirectAttr.addFlashAttribute("success", "Successfully assigned!");
//		// return "assigned";
//		return "ok";
//	}

//	@RequestMapping(value = "/assignedList", method = RequestMethod.GET)
//	public String getAssignedList(Locale locale, Model model) {
//		List<Student_Record> studentRecords = studentRecordService.findAll();
//		model.addAttribute("studentRecords", studentRecords);
//		return "assignedList";
//	}
//
//	@RequestMapping(value = { "/deleteAssign" }, method = RequestMethod.POST)
//	public void DeleteAssign(HttpServletRequest request) {
//		String id = request.getParameter("userid").toString();
//		Student_Record sr = studentRecordService.findById(Integer.parseInt(id));
//		studentRecordService.delete(sr);
//	}
}
