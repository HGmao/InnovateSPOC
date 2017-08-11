package com.base.DaoImpl;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.apache.commons.collections.CollectionUtils;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate4.SessionFactoryUtils;
import org.springframework.stereotype.Repository;

import com.base.Dao.NotificationDao;
import com.base.Po.news;
import com.base.utils.SqlConnectionUtils;

@Repository("notificationDao")
public class NotificationDaoImpl implements NotificationDao{

	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public void setNotification(String insertSql) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.openSession();

		int i = 0;
		Transaction t = null;
		try {
			t = session.beginTransaction();
			Query q = session.createSQLQuery(insertSql);
			q.executeUpdate();
			t.commit();
		} catch (Exception ex) {
			if (t != null) {
				t.rollback();
			}
		} finally {
			session.close();
		}
	}

	@Override
	public List getNotificationInfo(String currentPage,String itemsPerPage) {
		// TODO Auto-generated method stub
				
		Connection conn=null;
		CallableStatement sp=null; 
		ResultSet rs=null;
		List list = new ArrayList();
		List<news> listNews = new ArrayList<news>();
		try
		{
			conn = (Connection) SessionFactoryUtils.getDataSource(sessionFactory).getConnection();
			
			sp = conn.prepareCall("{call innovatespoc.query_news(?,?,?)}");  //调用存储过程
			sp.setInt(1, Integer.valueOf(currentPage));
			sp.setInt(2, Integer.valueOf(itemsPerPage));
			sp.registerOutParameter(3,java.sql.Types.INTEGER);
			sp.execute(); // 执行存储过程 
			int maxItems=sp.getInt(3);//接收输出参数
			//接收结果集
			rs=sp.getResultSet();   //获得结果集
			
			while(rs.next())
			{
				news notification=new news();
				notification.setId(rs.getInt("id"));
				notification.setTitle(rs.getString("title"));
				listNews.add(notification);
			}
			
			//如果新闻列表不为空才添加到List
			if(CollectionUtils.isNotEmpty(listNews)){
			   list.add(listNews);
			   list.add(maxItems);
			}
			
		} catch (SQLException e)
		{
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			SqlConnectionUtils.free(conn, sp, rs);
		}
		return list;

	}
}