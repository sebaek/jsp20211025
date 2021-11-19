package jdbc01;

import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.Properties;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;

import org.mariadb.jdbc.MariaDbPoolDataSource;

/**
 * Application Lifecycle Listener implementation class JDBCListener1
 *
 */
@WebListener
public class JDBCListener1 implements ServletContextListener {

    /**
     * Default constructor. 
     */
    public JDBCListener1() {
        // TODO Auto-generated constructor stub
    }

	/**
     * @see ServletContextListener#contextDestroyed(ServletContextEvent)
     */
    public void contextDestroyed(ServletContextEvent sce)  { 
         // TODO Auto-generated method stub
    }

	/**
     * @see ServletContextListener#contextInitialized(ServletContextEvent)
     */
    public void contextInitialized(ServletContextEvent sce)  { 
         // TODO Auto-generated method stub
    	System.out.println("JDBC 리스너 시작!!!!!");
    	
    	ServletContext application = sce.getServletContext();
    	
    	String path = "/WEB-INF/db.properties";
    	InputStream is = null;
    	
    	try {
    		is = application.getResourceAsStream(path);
    		
    		Properties props = new Properties();
    		props.load(is);
    		
    		System.out.println(props.get("user"));
    		System.out.println(props.get("password"));
    		System.out.println(props.get("ip"));
    		System.out.println(props.get("schema"));
    		
    		// jdbc:mariadb://ip:port/schema?user=username&password=password
    		
    		String ip = props.getProperty("ip");
    		String schema = props.getProperty("schema");
    		String user = props.getProperty("user");
    		String password = props.getProperty("password");
    		
    		String dburl = "jdbc:mariadb://" + ip + "/" + schema + "?user=" + user + "&password=" + password ;
    		
    		System.out.println(dburl);
    		
    		MariaDbPoolDataSource pool = new MariaDbPoolDataSource(dburl);

    		Connection connection = pool.getConnection();
    		Statement stmt = connection.createStatement();
    		ResultSet rs = stmt.executeQuery("SELECT 333");
    		if (rs.next()) {
    			System.out.println(rs.getInt(1)); // 333 출력되면 쿼리 실행 OK
    		}
    		
    	} catch (Exception e) {
    		e.printStackTrace();
    	} finally {
    		if (is != null) {
    			try {
					is.close();
				} catch (IOException e) {
					e.printStackTrace();
				}
    		}
		}
    	
    	
    	
    }
	
}


















