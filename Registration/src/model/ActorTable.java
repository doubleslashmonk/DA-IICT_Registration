package model;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

public class ActorTable {
	public static void main(String[] args) {
		/*Actor a=new Actor();
		a.setActorId(1);
		a.setActorFirstName("kunjan");
		a.setActorMiddleName("J");
		a.setActorLastName("Doshi");
		a.setActorPhoneNumber(231);
		a.setActorEmailAddress("d_kunjan@yahoo.co.in");
		a.setActorOfficeAddress("Hello");
		a.setActorPassword("kunjan");
		a.setIsVerified(true);
		a.setRoleId(1);
		SessionFactory sessionFactory = new Configuration().configure()
				.buildSessionFactory();
		Session session = sessionFactory.getCurrentSession();
		session.beginTransaction();
		session.save(a);
		session.getTransaction().commit();*/
		/*Role role=new Role();
		role.setRoleId(1);
		role.setRoleName("supervisor");
		Role role1=new Role();
		role1.setRoleId(2);
		role1.setRoleName("coordinator");*/
		City c=new City();		
		c.setCityName("Ahmedabad");
		c.setStateName("Gujarat");
		SessionFactory sessionFactory = new Configuration().configure()
				.buildSessionFactory();
		Session session = sessionFactory.getCurrentSession();
		session.beginTransaction();
		session.save(c);
		session.getTransaction().commit();
		
	}
}