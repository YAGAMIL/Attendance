package com.aku.attendance.api.result;

import java.util.HashMap;

/**
 * Description:返回类 Program:Attendance Created on 2019-04-11 10:25
 *
 * @author <a href="mailto: Tablo_Jhin1996@outlook.com">Tablo</a>
 * @version 1.0
 */
public class ResponseResult extends HashMap<String, Object> {
  private static final long serialVersionUID = 1L;

  private static final String CODE_TAG = "code";

  private static final String MSG_TAG = "msg";

  private static final String DATA_TAG = "data";

  /** 状态类型 */
  public enum Type {
    /** 成功 */
    SUCCESS(0),
    /** 警告 */
    WARN(301),
    /** 错误 */
    ERROR(500);
    private final int value;

    Type(int value) {
      this.value = value;
    }

    public int value() {
      return this.value;
    }
  }

  /** 状态类型 */
  private Type type;

  /** 状态码 */
  private int code;

  /** 返回内容 */
  private String msg;

  /** 数据对象 */
  private Object data;

  /** 初始化一个新创建的 ResponseResult 对象，使其表示一个空消息。 */
  public ResponseResult() {}

  /**
   * Author: Tablo
   *
   * <p>Description:[初始化一个新创建的 ResponseResult 对象]
   *
   * <p>Created on 10:31 2019/4/11 0011
   *
   * @param type 状态类型
   * @param msg 返回内容
   */
  public ResponseResult(Type type, String msg) {
    super.put(CODE_TAG, type.value);
    super.put(MSG_TAG, msg);
  }

  /**
   * Author: Tablo
   *
   * <p>Description:[初始化一个新创建的 ResponseResult 对象]
   *
   * <p>Created on 10:31 2019/4/11 0011
   *
   * @param type 状态类型
   * @param msg 返回内容
   * @param data 数据对象
   */
  public ResponseResult(Type type, String msg, Object data) {
    super.put(CODE_TAG, type.value);
    super.put(MSG_TAG, msg);
    super.put(DATA_TAG, data);
  }

  /**
   * Author: Tablo
   *
   * <p>Description:[返回成功消息]
   *
   * <p>Created on 10:30 2019/4/11 0011
   *
   * @return com.aku.attendance.api.result.ResponseResult 成功消息
   */
  public static ResponseResult success() {
    return ResponseResult.success("操作成功");
  }

  /**
   * Author: Tablo
   *
   * <p>Description:[返回成功消息]
   *
   * <p>Created on 10:30 2019/4/11 0011
   *
   * @param msg 返回内容
   * @return com.aku.attendance.api.result.ResponseResult 成功消息
   */
  public static ResponseResult success(String msg) {
    return ResponseResult.success(msg, null);
  }

  /**
   * Author: Tablo
   *
   * <p>Description:[返回成功消息]
   *
   * <p>Created on 10:30 2019/4/11 0011
   *
   * @param msg 返回内容
   * @param data 数据对象
   * @return com.aku.attendance.api.result.ResponseResult 成功消息
   */
  public static ResponseResult success(String msg, Object data) {
    return new ResponseResult(Type.SUCCESS, msg, data);
  }

  public static ResponseResult success(Object data) {
    return new ResponseResult(Type.SUCCESS, "操作成功", data);
  }
  /**
   * Author: Tablo
   *
   * <p>Description:[返回警告消息]
   *
   * <p>Created on 10:29 2019/4/11 0011
   *
   * @param msg 返回内容
   * @return com.aku.attendance.api.result.ResponseResult 警告消息
   */
  public static ResponseResult warn(String msg) {
    return ResponseResult.warn(msg, null);
  }

  /**
   * Author: Tablo
   *
   * <p>Description:[返回警告消息]
   *
   * <p>Created on 10:29 2019/4/11 0011
   *
   * @param msg 返回内容
   * @param data 数据对象
   * @return com.aku.attendance.api.result.ResponseResult 警告消息
   */
  public static ResponseResult warn(String msg, Object data) {
    return new ResponseResult(Type.WARN, msg, data);
  }

  /**
   * Author: Tablo
   *
   * <p>Description:[返回错误消息]
   *
   * <p>Created on 10:28 2019/4/11 0011
   *
   * @return com.aku.attendance.api.result.ResponseResult
   */
  public static ResponseResult error() {
    return ResponseResult.error("操作失败");
  }

  /**
   * 返回错误消息
   *
   * @param msg 返回内容
   * @return 警告消息
   */
  public static ResponseResult error(String msg) {
    return ResponseResult.error(msg, null);
  }

  /**
   * 返回错误消息
   *
   * @param msg 返回内容
   * @param data 数据对象
   * @return 警告消息
   */
  public static ResponseResult error(String msg, Object data) {
    return new ResponseResult(Type.ERROR, msg, data);
  }
}
