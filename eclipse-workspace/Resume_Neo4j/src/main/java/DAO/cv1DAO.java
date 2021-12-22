package DAO;

import static org.neo4j.driver.Values.parameters;

import java.util.ArrayList;
import java.util.List;

import org.neo4j.driver.Driver;
import org.neo4j.driver.Record;
import org.neo4j.driver.Result;
import org.neo4j.driver.Session;

import bean.cv1;
import bean.cv2;
import bean.cv3;
import bean.cv4;
import dbConnection.ConnectNeo4j;

public class cv1DAO {

	public static boolean addNode(cv1 a,cv2 b,cv3 c,cv4 d) {
		Driver driver=ConnectNeo4j.getNeo4jConnection();
		try (Session session = driver.session()) {
			String root="MERGE (e:cv{name:'CV'}) ";
			String cv1="CREATE (a:cv1{id: $id,name: $name ,age: $age, email: $email,phone:$phone,address:$address}) ";
			String cv2="CREATE (b:cv2{id1: a.id, language:$language,skillScore:$skillScore}) ";
			String cv3="CREATE (c:cv3{id1: a.id, work:$work, dep:$dep,time:$time}) ";
			String cv4="CREATE (d:cv4{id1: a.id, diplomaName:$diplomaName,school:$school}) ";
			String rel="CREATE (a)-[:Skill]->(b) "
					+"CREATE (a)-[:Work]->(c) "
					+"CREATE (a)-[:Diploma]->(d) "
					+"MERGE (e)-[:In]->(a) "
					+"return a";
			boolean flag = session.writeTransaction(tx -> {
				Result result = tx.run(root+cv1+cv2+cv3+cv4+rel,
						parameters("id",a.getId(),"name",a.getName(), "age",a.getAge(), "email",a.getEmail(),"phone",a.getPhone(),"address",a.getAddress(),
								"language",b.getLanguage(),"skillScore",b.getSkillScore(),
								"work",c.getWork(),"dep",c.getDep(),"time",c.getTime(),
								"diplomaName",d.getDiplomaName(),"school",d.getSchool()
								));

				boolean test = result.hasNext();
				return test;
			});
			return flag;
		}
	}

	public static void delNode(int id) {
		Driver driver=ConnectNeo4j.getNeo4jConnection();
		try ( Session session = driver.session() )
		{	
			boolean kq = session.writeTransaction(tx ->{
				String del="match(a:cv1{id:$id}),(b:cv2{id1:a.id}),(c:cv3{id1:a.id}),(d:cv4{id1:a.id}) detach delete a,b,c,d";
				Result result = tx.run( del,parameters("id", id));
				Result result2 = tx.run( "MATCH (a:cv1{id: $id}) return a",parameters("id", id));
				return result2.hasNext();
			});
			if(!kq) {
				System.out.println("Xóa thành công");
			}
			else {
				System.out.println("Xóa không thành công");
			}
		}
	}

	public static List<Object> readNode(int id,int page) {
		Driver driver=ConnectNeo4j.getNeo4jConnection();
		try ( Session session = driver.session() ){
			return session.readTransaction( tx -> {
				String query="match(a:cv1{id:"+id+"}),(b:cv2{id1:a.id}),(c:cv3{id1:a.id}),(d:cv4{id1:a.id}) ";
				List<Object> names = new ArrayList<>();
				Result result;
				Record record;
				switch(page) {
				case 1:
					result = tx.run(query+"return a.email,a.address,a.phone,a.name,a.age ");
					record= result.next();
					cv1 s1=new cv1();
					s1.setName(record.get("a.name").toString());
					s1.setAge(Integer.valueOf(record.get("a.age").toString()));
					s1.setEmail(record.get("a.email").toString());
					s1.setPhone(record.get("a.phone").toString());
					s1.setAddress(record.get("a.address").toString());
					names.add(s1);
					break;
				case 2:
					result = tx.run(query+"return b.skillScore,b.language ");
					record= result.next();
					cv2 s2=new cv2();
					s2.setLanguage(record.get("b.language").toString());
					s2.setSkillScore(Float.valueOf(record.get("b.skillScore").toString()));
					names.add(s2);
					break;
				case 3:
					result = tx.run(query+"return c.work,c.time,c.dep ");
					record= result.next();
					cv3 s3=new cv3();
					s3.setDep(record.get("c.dep").toString());
					s3.setTime(Float.valueOf(record.get("c.time").toString()));
					s3.setWork(record.get("c.work").toString());
					names.add(s3);
					break;
				case 4:
					result = tx.run(query+"return d.school,d.diplomaName ");
					record= result.next();
					cv4 s4=new cv4();
					s4.setDiplomaName(record.get("d.diplomaName").toString());
					s4.setSchool(record.get("d.school").toString());
					names.add(s4);
					break;
				}
				return names;
			} );
		}
	}

	public static boolean editNode(cv1 a,cv2 b,cv3 c,cv4 d) {
		Driver driver=ConnectNeo4j.getNeo4jConnection();
		try (Session session = driver.session()) {
			String bef="match(a:cv1{id:$id}),(b:cv2{id1:a.id}),(c:cv3{id1:a.id}),(d:cv4{id1:a.id}) set ";
			String cv1="a.name=$name ,a.age=$age, a.email=$email,a.phone=$phone,a.address=$address, ";
			String cv2="b.language=$language,b.skillScore=$skillScore, ";
			String cv3="c.work=$work, c.dep=$dep, c.time=$time, ";
			String cv4="d.diplomaName=$diplomaName, d.school=$school "
					+"return a,b,c,d ";
			boolean flag = session.writeTransaction(tx -> {
				Result result = tx.run(bef+cv1+cv2+cv3+cv4,
						parameters("id",a.getId(),"name",a.getName(), "age",a.getAge(), "email",a.getEmail(),"phone",a.getPhone(),"address",a.getAddress(),
								"language",b.getLanguage(),"skillScore",b.getSkillScore(),
								"work",c.getWork(),"dep",c.getDep(),"time",c.getTime(),
								"diplomaName",d.getDiplomaName(),"school",d.getSchool()
								));
				boolean test = result.hasNext();
				return test;
			});
			return flag;
		}
	}
}
