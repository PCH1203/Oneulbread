package spms.controller;

import java.util.Map;

import spms.annotation.Component;
import spms.bind.DataBinding;
import spms.dao.EventDAO;
import spms.vo.Event;


@Component("/event/add.do")
public class EventAddController implements Controller, DataBinding {
	EventDAO eventDAO;
	
	public EventAddController setEventDAO(EventDAO eventDAO) {
		this.eventDAO = eventDAO;
		return this;
	}
	
	@Override
	public Object[] getDataBinders() {
		return new Object[] {
				"event", spms.vo.Event.class
		};
	}
	
	@Override
	public String execute(Map<String, Object> model) throws Exception {
		Event event = (Event)model.get("event");
		if(event.getClass_name() == null) {
			return "/event/eventAdd.jsp";
		} else {
			eventDAO.insert(event);
			return "redirect:list.do";
		}
	}
}
