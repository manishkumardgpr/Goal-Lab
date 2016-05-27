/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package functionality;

/**
 *
 * @author MANISH ARJUN
 */
import org.hibernate.Transaction;
import org.hibernate.Session;
import my_source.Store;
import util.NewHibernateUtil;
import org.hibernate.Query;
/**
 *
 * @author Administrator
 */
public class StoreItems {
 
    
    public Store getItems()
    {
          String message=null;
        Session session=null;
       Transaction tx = null;
	 Store store = null;
	 try {
                 session=NewHibernateUtil.getSessionFactory().openSession();
		 tx = session.getTransaction();
		 tx.begin();
		 Query query = session.createQuery("from store");
		 store = (Store)query.uniqueResult();
		 tx.commit();
	 } catch (Exception e) {
		 if (tx != null) {
			 tx.rollback();
		 }
		 e.printStackTrace();
	 } finally {
		 session.close();
	 }
	 return store;
    }
}
