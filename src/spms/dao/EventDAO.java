package spms.dao;

import java.util.List;
import spms.vo.Event;

public interface EventDAO {
	List<Event> selectlist() throws Exception;
	int insert(Event event) throws Exception;
	Event selectOne(int no) throws Exception;
	int update(Event event) throws Exception;
	int delete(int no) throws Exception;
	List<Event> selectlist2() throws Exception;
}
