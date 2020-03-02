import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.HashSet;
import java.util.Set;

@WebServlet(name = "BuyServlet", urlPatterns = {"/BuyServlet"})
public class BuyServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String vare = request.getParameter("navn");

        HttpSession session = request.getSession();

        if(((Set<String>)session.getAttribute("basket")) == null){

            Set<String> basket = new HashSet<>();
            session.setAttribute("basket", basket);
        }

        ((Set<String>)session.getAttribute("basket")).add(vare);

        request.setAttribute("besked", "her kan du se en over sigt over dine vare:");
        request.getRequestDispatcher("WEB-INF/HuskeListe.jsp").forward(request, response);


    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
