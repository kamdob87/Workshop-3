package pl.coderslab.users;

import pl.coderslab.entity.User;
import pl.coderslab.entity.UserDao;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet("/user/list")
public class UserList extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        getServletContext().getRequestDispatcher("/users/list.jsp")
                .forward(request, response);

        User user = new User();
        user.setUserName("Andrzej");
        user.setId(1);
        user.setEmail("andrew@gmail.com");

        UserDao userDao = new UserDao();
        userDao.create(user);
        request.setAttribute("users", userDao.findAll());

    }

}