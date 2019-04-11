package com.aku.attendance.api.controller;

import com.aku.attendance.api.result.ResponseResult;
import com.aku.attendance.common.utils.IDateUtils;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;

import java.beans.PropertyEditorSupport;
import java.util.Date;

/**
 * Description:Web层通用数据处理 Program:Attendance Created on 2019-04-11 10:35
 *
 * @author <a href="mailto: Tablo_Jhin1996@outlook.com">Tablo</a>
 * @version 1.0
 */
public class BaseController {

  @InitBinder
  public void initBinder(WebDataBinder binder) {
    // Date 类型转换
    binder.registerCustomEditor(
        Date.class,
        new PropertyEditorSupport() {
          @Override
          public void setAsText(String text) {
            setValue(IDateUtils.parseDate(text));
          }
        });
  }
    /**
     * 响应返回结果
     *
     * @param rows 影响行数
     * @return 操作结果
     */
    protected ResponseResult toAjax(int rows) {
        return rows > 0 ? success() : error();
    }

    /**
     * 响应返回结果
     *
     * @param result 结果
     * @return 操作结果
     */
    protected ResponseResult toAjax(boolean result)
    {
        return result ? success() : error();
    }

    /**
     * 返回成功
     */
    ResponseResult success() {
        return ResponseResult.success();
    }

    /**
     * 返回失败消息
     */
    ResponseResult error() {
        return ResponseResult.error();
    }

    /**
     * 返回成功消息
     */
    ResponseResult success(String message) {
        return ResponseResult.success(message);
    }

    /**
     * 返回失败消息
     */
    public ResponseResult error(String message) {
        return ResponseResult.error(message);
    }

    /**
     * 返回错误码消息
     */
    public ResponseResult error(ResponseResult.Type type, String message) {
        return new ResponseResult(type, message);
    }
}
