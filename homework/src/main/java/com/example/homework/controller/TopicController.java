package com.example.homework.controller;

import com.example.homework.model.Message;
import com.example.homework.model.Topic;
import com.example.homework.model.User;
import com.example.homework.service.ForumService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.springframework.web.servlet.view.RedirectView;

import javax.servlet.http.HttpSession;
import java.util.Random;

@Controller
@SessionAttributes("name")
public class TopicController {
	@Autowired
	ForumService forumService;
	@GetMapping("/listTopics")
	public String listTopics (Model model) {
		model.addAttribute("topics", forumService.getTopics());
		return "listTopics";
	}
	
	@GetMapping("/showTopic")
	public String topic (Model model,@RequestParam(name = "id") String id) {
		Topic topic = forumService.findTopic(Integer.valueOf(id));
		if(!topic.getMessages().isEmpty()) {
			Message latestMessage = topic.getLatestReplied();
			model.addAttribute("latestMessage", latestMessage);
		}
		
		model.addAttribute("topic", topic);
		return "showTopic";
	}
	
	@GetMapping("/newTopic")
	public String newTopic (Model model) {
		return "newTopic";
	}
	
	@RequestMapping(value="/newTopic", method = RequestMethod.POST)
	public String addTopic(ModelMap model, HttpSession session, @RequestParam String title,
			@RequestParam String content){
		String userName = session.getAttribute("name").toString();
		User user = forumService.findUserByUserName(userName);
		Topic topic = new Topic(forumService.getTopics().size()+1, title, content, user, forumService.getCategory());
		forumService.addTopic(topic);
		return "redirect:listTopics";
	}
	
	@GetMapping("/replyTopic")
	public String replyTopc (Model model, @RequestParam(name ="id") int topicId) {
		model.addAttribute("topic", forumService.findTopic(topicId));
		return "replyTopic";
	}
	
	@RequestMapping(value="/replyTopic", method = RequestMethod.POST)
	public RedirectView addReplyTopic (final RedirectAttributes redirectAttributes, ModelMap model, HttpSession session,
			@RequestParam int topicId,
			@RequestParam String content){
		String userName = session.getAttribute("name").toString();
		Topic topicMain = forumService.findTopic(topicId);
		User user = forumService.findUserByUserName(userName);
		Message message = new Message("Re: " + topicMain.getTitle(), content, user);
		forumService.addReplyTopic(topicMain.getId(), message);
		redirectAttributes.addAttribute("id", topicId);
		return new RedirectView("showTopic");
	}
	
}
