

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.extraction.MainFile;

@WebServlet("/WelcomeServlet")
public class WelcomeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 	
	{
			
	    int clusters = Integer.parseInt(request.getParameter("noc"));
	    String[] feature = request.getParameterValues("feature");
	    
		PrintWriter out = response.getWriter();
	    response.setContentType("text/html");
	    out.print("<html><body>");
		out.println("<h1>" + "WelcomeServlet:</h1>");
	    out.println("<h2>"+ "No of Clusters::"+clusters+ "</h2>");

		out.println("<ul>");
		int selected_features;
		for(String s:feature)
		{
			selected_features = Integer.parseInt(s);
			out.print("<li>"+selected_features+"</li>");
		}
		out.print("</ul>");
		
		MainFile mfObj = new MainFile();
		mfObj.myMain(clusters,feature);
		
		/*----------------------------------------------------------------------------------------------------------------*/
		File mainFolder = new File("resources"+ File.separator +"clustered");
		out.println("<ul>");
        for (File main : mainFolder.listFiles()) 
        { 
        	out.print("<li>"+main.getName()+"</li>");
        		File subFolder = new File("resources"+ File.separator +"clustered"+ File.separator +""+main.getName());
        		
        		for (File sub : subFolder.listFiles()) 
        		{
        			out.println("<br>"+sub.getName());
        		}      		
        }
        
        
       // request.setAttribute("myfeatures", "hello");
        //request.getRequestDispatcher("analysis.jsp").forward(request, response);
        HttpSession session = request.getSession(true);
        session.setAttribute("feature", feature );
        response.sendRedirect("analysis.jsp?");
        
        
        //String site = new String("analysis.jsp");
       // response.setStatus(response.SC_MOVED_TEMPORARILY);
       // response.setHeader("Location", site);
        
        
        out.print("</ul>"); 
		out.print("</body></html>");
		
		
	}

}
