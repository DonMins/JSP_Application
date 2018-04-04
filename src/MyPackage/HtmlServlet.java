package MyPackage;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet("/result.html")

public class HtmlServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        performTask(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        performTask(req, resp);
    }

    protected void performTask(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        resp.setContentType("text/html; charset=UTF-8");
        HttpSession session = req.getSession();
        Task task = (Task) session.getAttribute("task");
        if (task != null) {
            task.setResult(sum(task.getStr1(), task.getStr2()));
        }
        session.setAttribute("task", task);
        req.getRequestDispatcher("/result.jsp").forward(req, resp);
    }

    private String sum(String str1, String str2) {
        return str1 + str2;
    }
}

