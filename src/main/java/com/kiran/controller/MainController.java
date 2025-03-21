package com.kiran.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.kiran.dao.InventoryDao;
import com.kiran.inventorydb.IssueProcesed;
import com.kiran.inventorydb.IssueRaw;
import com.kiran.inventorydb.Manager;
import com.kiran.inventorydb.ProcessedMaterial;
import com.kiran.inventorydb.RawMaterial;

@Controller
public class MainController {
	@Autowired
	Manager manager;
	@Autowired
	InventoryDao inventoryDao;
	@Autowired
	RawMaterial rawMaterial;
	@Autowired
	ProcessedMaterial processedMaterial;
	
	@RequestMapping("/")
	public String OpenIndexPage()
	{
		return "index";
	}
	@RequestMapping(path="/loginAdmin",method=RequestMethod.POST)
	public String AdminLogin(HttpServletRequest request,Model model)
	{
		String aemail=request.getParameter("email");
		String apass=request.getParameter("password");
		model.addAttribute("em",aemail);
		return"Dashboard";
	}
	@RequestMapping("/Dashboard")
	
	public String OpenDashboardPage()
	{
		return "Dashboard";
	}
	@RequestMapping("/addRawPage")
	public String OpenAddRawPage()
	{
		return "AddRawMaterial";
	}
	@RequestMapping(path="/addRaw",method=RequestMethod.POST)
	public String AddRawPage(@ModelAttribute RawMaterial rawMaterial)
	{
		int i=(int)inventoryDao.insertRaw(rawMaterial);
		if(i>0)
		{
			return "RawMaterialDashboard";
		}
		else
		{
			return "AddRawMaterial";
		}
	}
	@RequestMapping("/deleteRawPage")
	public String OpenDeleteRawPage(Model m)
	{
		List<RawMaterial> rawMaterials= inventoryDao.viewAllRawMaterial();
		m.addAttribute("rawMaterials", rawMaterials);
		return "DeleteRawMaterial";
	}
	@RequestMapping(path="/deleteRaw",method=RequestMethod.GET)
	public String DeleteRawPage(HttpServletRequest request)
	{
		int rid=Integer.parseInt(request.getParameter("id"));
		inventoryDao.deleteRaw(rid);
		return "RawMaterialDashboard";
	}
	@RequestMapping("/viewRaw")
	public String OpenViewRawPage(Model m)
	{
		List<RawMaterial> rawMaterials= inventoryDao.viewAllRawMaterial();
		m.addAttribute("rawMaterials", rawMaterials);
		return "ViewRawMaterial";
	}
	@RequestMapping("/updateRawPage")
	public String OpenUpdateRawPage()
	{
		return "UpdateRawMaterial";
	}
	@RequestMapping(path="/updateRaw",method=RequestMethod.POST)
	public String UpdateRawPage(HttpServletRequest request)
	{
		int rid=Integer.parseInt(request.getParameter("rid"));
		RawMaterial rawMaterial=inventoryDao.viewOneRaw(rid);
		int quantity=Integer.parseInt(request.getParameter("rquantity"));
		int rquan=rawMaterial.getRquantity();
		if(quantity!=0 && quantity>0)
		{
			rquan=rquan+quantity;
			rawMaterial.setRquantity(rquan);
			inventoryDao.updateRaw(rawMaterial);
			return "RawMaterialDashboard";
		}
		else
		{
			return "UpdateRawMaterial";
		}
	}
	@RequestMapping("/unavailableRawPage")
	public String OpenUnavailableRawPage(Model m)
	{
		List<RawMaterial> rawMaterials0=inventoryDao.showUnavailableRaw();
		m.addAttribute("rawMaterials0",rawMaterials0);
		return "ShowUnavailableRawMaterial";
	}
	@RequestMapping("/addProcessedPage")
	public String OpenAddProcessedPage()
	{
		return "AddProcessedMaterial";
	}
	@RequestMapping(path="/addProcessed",method=RequestMethod.POST)
	public String AddProcessedPage(@ModelAttribute ProcessedMaterial processedMaterial)
	{
		int i=(int)inventoryDao.insertProcessed(processedMaterial);
		if(i>0)
		{
			return "ProcessedMaterialDashboard";
		}
		else
		{
			return "AddProcessedMaterial";
		}
	}
	
	@RequestMapping("/deleteProcessedPage")
	public String OpenDeleteProcessedPage(Model m)
	{
		List<ProcessedMaterial> processedMaterials= inventoryDao.viewAllProcessedMaterial();
		m.addAttribute("processedMaterials", processedMaterials);
		return "DeleteProcessedMaterial";
	}
	
	
	@RequestMapping(path="/deleteProcessed",method=RequestMethod.GET)
	public String DeleteProcessedPage(HttpServletRequest request)
	{
		int pid=Integer.parseInt(request.getParameter("id"));
		inventoryDao.deleteProcessed(pid);
		return "ProcessedMaterialDashboard";
	}
	
	@RequestMapping("/viewProcessed")
	public String OpenViewProcessedPage(Model m)
	{
		List<ProcessedMaterial> processedMaterials= inventoryDao.viewAllProcessedMaterial();
		m.addAttribute("processedMaterials", processedMaterials);
		return "ViewProcessedMaterial";
	}
	
	@RequestMapping("/updateProcessedPage")
	public String OpenUpdateProcessedPage()
	{
		return "UpdateProcessedMaterial";
	}
	
	@RequestMapping(path="/updateProcessed",method=RequestMethod.POST)
	public String UpdateProcessedPage(HttpServletRequest request)
	{
		int pid=Integer.parseInt(request.getParameter("pid"));
		ProcessedMaterial processedMaterial=inventoryDao.viewOneProcessed(pid);
		int quantity=Integer.parseInt(request.getParameter("pquantity"));
		int pquan=processedMaterial.getPquantity();
		if(quantity!=0 && quantity>0)
		{
			pquan=pquan+quantity;
			processedMaterial.setPquantity(pquan);
			inventoryDao.updateProcessed(processedMaterial);
			return "ProcessedMaterialDashboard";
		}
		else
		{
			return "UpdateProcessedMaterial";
		}
	}
	@RequestMapping("/unavailableProcessedPage")
	public String OpenUnavailableProcessedPage(Model m)
	{
		List<ProcessedMaterial> processedMaterials0=inventoryDao.showUnavailableProcessed();
		m.addAttribute("processedMaterials0",processedMaterials0);
		return "ShowUnavailableProcessedMaterial";
	}
	@RequestMapping("/changePassword")
	public String OpenChangePasswordPage()
	{
		return "ChangePassword";	
	}
	@RequestMapping(path="/updatePassword",method=RequestMethod.GET)
	public String changepasswordPage(HttpServletRequest request)
	{
		String email=request.getParameter("email");
		String password=request.getParameter("password");
		String npass=request.getParameter("npass");
		Manager manager=inventoryDao.viewManager(email);
		if(manager!=null && manager.getPassword().equals(password)){
			manager.setPassword(npass);
			inventoryDao.updateManager(manager);
			return "Dashboard";
		}
		else
		{
			return "ChangePassword";
		}
	}
	@RequestMapping("/issuedRaw")
	public String OpenIssuedRawPage(HttpServletRequest request,Model m)
	{
		return "IssueRawMaterial";
	}
	@RequestMapping(path="/issueRawMaterial",method=RequestMethod.POST)
	public String IssuedRawPage(@ModelAttribute IssueRaw issueRaw,HttpServletRequest request)
	{
		int i=(int) inventoryDao.insertIssue(issueRaw);
		if(i>0)
		{
			int quantity=Integer.parseInt(request.getParameter("iquantity"));
			int id=Integer.parseInt(request.getParameter("rid"));
			RawMaterial raw=inventoryDao.viewOneRaw(id);
			int iquantity=raw.getRquantity();
			if(quantity!=0 && quantity>0 && quantity<=iquantity)
			{
				iquantity=iquantity-quantity;
				raw.setRquantity(iquantity);
				inventoryDao.updateRaw(raw);
				return "RawMaterialDashboard";
			}
			else
			{
				return "error";
			}
		}
		else
		{
			return "error";
		}
	}
	@RequestMapping("/viewIssuedRaw")
	public String OpenViewIssuedRawPage(Model m)
	{
		List<IssueRaw> issueRawMaterial=inventoryDao.viewAllIssue();
		m.addAttribute("issueRawMaterial",issueRawMaterial);
		return "ViewIssuedRawMaterial";
	}
	@RequestMapping("/issuedProcessed")
	public String OpenIssuedProcessedPage()
	{
		return "IssueProcessedMaterial";
	}
	@RequestMapping(path="/issuedProcessedMaterial",method=RequestMethod.POST)
	public String IssuedProcessedPage(@ModelAttribute IssueProcesed issueProcessed,HttpServletRequest request)
	{
		int i=(int) inventoryDao.insertIssue(issueProcessed);
		if(i>0)
		{
			int quantity=Integer.parseInt(request.getParameter("ipquantity"));
			int id=Integer.parseInt(request.getParameter("pid"));
			ProcessedMaterial pro=inventoryDao.viewOneProcessed(id);
			int iquantity=pro.getPquantity();
			if(quantity!=0 && quantity>0 && quantity<=iquantity)
			{
				iquantity=iquantity-quantity;
				pro.setPquantity(iquantity);
				inventoryDao.updateProcessed(pro);
				return "ProcessedMaterialDashboard";
			}
			else
			{
				return "error";
			}
		}
		else
		{
			return "error";
		}
	}
	@RequestMapping("/viewissuedProcessed")
	public String OpenViewIssuedProcessedPage(Model m)
	{
		List<IssueProcesed> issueProcessed=inventoryDao.viewAllIssueProcessed();
		m.addAttribute("issueProcessed",issueProcessed);
		return "ViewIssuedProcessedMaterial";
	}
	@RequestMapping("/RawMaterialDashboard")
	public String OpenRawMaterialDashboardPage()
	{
		return "RawMaterialDashboard";
	}
	@RequestMapping("/ProcessedMaterialDashboard")
	public String OpenProcessedMaterialDashboardPage()
	{
		return "ProcessedMaterialDashboard";
	}
}
