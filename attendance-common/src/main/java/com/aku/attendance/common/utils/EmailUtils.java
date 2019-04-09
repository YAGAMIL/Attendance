package com.aku.attendance.common.utils;

import freemarker.template.Configuration;
import freemarker.template.Template;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Component;
import org.springframework.ui.freemarker.FreeMarkerTemplateUtils;

import javax.annotation.Resource;
import javax.mail.internet.MimeMessage;
import java.util.HashMap;
import java.util.Map;

/**
 * Description: Program:Attendance Created on 2019-03-19 09:45
 *
 * @author <a href="mailto: Tablo_Jhin1996@outlook.com">Tablo</a>
 * @version 1.0
 */
@Component
public class EmailUtils {

  @Resource private JavaMailSender mailSender;

  @Resource private Configuration configuration;

  @Value("${spring.mail.username}")
  private String sender;
  /**
   * Author: Tablo
   *
   * <p>Description:[发送邮件]
   *
   * <p>Created on 下午8:10 19-3-5
   *
   * @param to 收件方
   * @param subject 邮件标题
   * @param content 邮件正文
   */
  public void sendSimpleMail(String to, String subject, String content) {
    SimpleMailMessage message = new SimpleMailMessage();
    message.setFrom(sender);
    message.setTo(to);
    message.setSubject(subject);
    message.setText(content);
    try {
      mailSender.send(message);
    } catch (Exception e) {
      e.printStackTrace();
    }
  }

  public void sendTemplateMail(String to, String subject) {
    MimeMessage message = mailSender.createMimeMessage();
    try {
      MimeMessageHelper helper = new MimeMessageHelper(message, true, "UTF-8");
      helper.setFrom(sender);
      helper.setTo(to);
      helper.setSubject(subject);
      Map<String, Object> model = new HashMap<>(20);
      model.put("username", "tablo");
      Template template = configuration.getTemplate("welcome.html");
      String text = FreeMarkerTemplateUtils.processTemplateIntoString(template, model);
      helper.setText(text, true);
    } catch (Exception e) {
      e.printStackTrace();
    }
    mailSender.send(message);
  }
}
