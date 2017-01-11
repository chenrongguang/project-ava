package crg.servlet.com;
import  java.io.PrintWriter;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class mytest
 */
@WebServlet("/mytest")
public class mytest extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public mytest() {
        super();
        // TODO Auto-generated constructor stub
    }
   
    private void  processRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException ,IOException{
    	response.setContentType("text/html;charset=UTF-8");
    	PrintWriter out= response.getWriter();
    	try	
    	{
    		out.print("<html>");
    		out.print("<head>");
    		out.print("<title>First servlet</title></head><body>");
    		out.print("XXXXXXXXXXXXXXX"+ request.getParameter("name") +"</body></html>");
    	}   
    	finally{
    		out.close();
    	}
    }
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		this.processRequest(request, response); 
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
