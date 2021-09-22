package Controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Dao.moneyflow;
import Model.money;




@WebServlet("/addPlantController")
public class addPlantController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public addPlantController() {
        super();
        
    }

	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session=request.getSession();//new sessionª«¥ó	
		money a=(money) session.getAttribute("A");
		
		new moneyflow().add(a);
		
		response.sendRedirect("finish.jsp");
	}

}
