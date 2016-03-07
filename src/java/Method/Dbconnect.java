
package Method;

import java.sql.*;


public class Dbconnect {
    
        private Connection con;
        private Statement st;
        private ResultSet rs;
        
        public Dbconnect(){
            try{
                Class.forName("com.mysql.jdbc.Driver");
                
                con = DriverManager.getConnection("jdbc:mysql://localhost:3306/newbee","ssrahul96","rahul1234");
                st = con.createStatement();
                
            }catch(ClassNotFoundException ex){
                System.out.println("Error : "+ex);
            } catch (SQLException ex) {
                System.out.println("Error : "+ex);
            }
        }
        
        public String LoginCheck(String uname,String pass)throws SQLException{
            String query="select firstname from userinfo where userid like '"+uname+"' and password like '"+pass+"';";
           
            System.out.println(query);            
            rs = st.executeQuery(query);            
            
            if(rs.next()==true){ 
                System.out.println(rs.getString(1));
                return rs.getString(1);
            }
            else
                return "failure";
        }     

    public boolean Signup(String uname, String pass, String fname, String mob, String email, String gender) throws SQLException {
        String query="select firstname from userinfo where userid ='"+uname+"';";
        System.out.println(query);
            rs = st.executeQuery(query);
            if(rs.next()==true)
                return false;
            else{
                String query1="insert into userinfo values('"+uname+"','"+pass+"','"+fname+"','"+gender+"','"+mob+"','"+email+"');";
                System.out.println(query1);
                st.executeUpdate(query1);
              con.close(); 
                return true;
            }
    }

    public void publishPost(String uname, StringBuffer np) throws SQLException {
        String query3="insert into post values('"+uname+"','"+np+"');";
        System.out.println(query3);
        st.executeUpdate(query3);
    }

    public void newFriend(String uname, String nf) throws SQLException {
        String query4="insert into newfriend values('"+uname+"','"+nf+"');";
        System.out.println(query4);
        st.executeUpdate(query4);
    }

    public void newFriendConfirm(String uname, String newfrndcon) throws SQLException {
        String query5="insert into friends values('"+uname+"','"+newfrndcon+"');";
		String query6="insert into friends values('"+newfrndcon+"','"+uname+"');";
        System.out.println(query5);
        st.executeUpdate(query5);
		System.out.println(query6);
        st.executeUpdate(query6);
        
        String query7="delete from newfriend where user1='"+newfrndcon+"' and user2='"+uname+"';";
        st.execute(query7);
        
    }

   
}
