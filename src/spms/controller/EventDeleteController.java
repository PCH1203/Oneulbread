package spms.controller;

import java.util.Map;

import spms.annotation.Component;
import spms.bind.DataBinding;
import spms.dao.EventDAO;


@Component("/event/delete.do")
public class EventDeleteController implements Controller, DataBinding {
	EventDAO eventDAO;
	
	public EventDeleteController setEventDAO(EventDAO eventDAO) {
		this.eventDAO = eventDAO;
		return this;
	}
	
	@Override
	public Object[] getDataBinders() {
		return new Object[] {
			"no", Integer.class
		};
	}
	
	@Override
	public String execute(Map<String, Object> model) throws Exception {
		Integer no = (Integer)model.get("no");
		eventDAO.delete(no);
		
		return "redirect:list.do";		
	}
}
