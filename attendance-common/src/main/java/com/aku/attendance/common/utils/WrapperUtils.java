package com.aku.attendance.common.utils;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;

import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.stream.Collectors;

/**
 * Description:Wrapper工具类 Program:Attendance Created on 2019-04-05 15:54
 *
 * @author <a href="mailto: Tablo_Jhin1996@outlook.com">Tablo</a>
 * @version 1.0
 */
public class WrapperUtils {

  private static final char UNDERLINE = '_';

  /**
   * Author: Tablo
   *
   * <p>Description:[添加wrapper的eq条件]
   *
   * <p>Created on 15:54 2019/4/8 0008
   *
   * @param wrapper 指定wrapper
   * @param obj 查询对象
   * @return com.baomidou.mybatisplus.core.conditions.query.QueryWrapper<T>
   */
  public static <T> QueryWrapper<T> getQueryWrapperEq(QueryWrapper<T> wrapper, Object obj) {
    return wrapperEq(obj, filterField(obj), wrapper);
  }

  /**
   * Author: Tablo
   *
   * <p>Description:[添加like条件]
   *
   * <p>Created on 15:53 2019/4/8 0008
   *
   * @param wrapper 条件wrapper
   * @param obj 对象
   * @return com.baomidou.mybatisplus.core.conditions.query.QueryWrapper<T>
   */
  public static <T> QueryWrapper<T> getQueryWrapperLike(QueryWrapper<T> wrapper, Object obj) {
    return wrapperLike(obj, filterField(obj), wrapper);
  }

  /**
   * Author: Tablo
   *
   * <p>Description:[过滤字段]
   *
   * <p>Created on 18:58 2019/4/5 0005
   *
   * @param obj 对象
   * @return java.util.List<java.lang.reflect.Field>
   */
  private static List<Field> filterField(Object obj) {
    return Arrays.stream(obj.getClass().getDeclaredFields())
        .filter(o -> ReflectUtils.invokeGetter(obj, o.getName()) != null)
        .collect(Collectors.toList());
  }

  /**
   * Author: Tablo
   *
   * <p>Description:[等于判断]
   *
   * <p>Created on 18:59 2019/4/5 0005
   *
   * @param obj 对象
   * @param list 字段list
   * @param wrapper 条件
   * @return com.baomidou.mybatisplus.core.conditions.query.QueryWrapper<T>
   */
  private static <T> QueryWrapper<T> wrapperEq(
      Object obj, List<Field> list, QueryWrapper<T> wrapper) {
    list.forEach(
        f -> {
          Object val = ReflectUtils.invokeGetter(obj, f.getName());
          wrapper.eq(buildField(f.getName()), val);
        });
    return wrapper;
  }

  /**
   * Author: Tablo
   *
   * <p>Description:[wrapper 添加Like]
   *
   * <p>Created on 15:55 2019/4/8 0008
   *
   * @param obj 查询对象
   * @param list 字段list
   * @param wrapper wrapper
   * @return com.baomidou.mybatisplus.core.conditions.query.QueryWrapper<T>
   */
  private static <T> QueryWrapper<T> wrapperLike(
      Object obj, List<Field> list, QueryWrapper<T> wrapper) {
    list.forEach(
        f -> {
          Object val = ReflectUtils.invokeGetter(obj, f.getName());
          wrapper.like(buildField(f.getName()), val);
        });
    return wrapper;
  }

  public static <T> QueryWrapper<T> wrapperFieldsLike(
      Object obj, QueryWrapper<T> wrapper, String[] fields) {
    if (obj == null) {
      return wrapper;
    }
    return wrapperLike(obj, filterFields(obj, fields), wrapper);
  }

  public static <T> QueryWrapper<T> wrapperFieldsEq(
      Object obj, QueryWrapper<T> wrapper, String[] fields) {
    if (obj == null) {
      return wrapper;
    }
    return wrapperEq(obj, filterFields(obj, fields), wrapper);
  }

  /**
   * Author: Tablo
   *
   * <p>Description:[过滤非空字段]
   *
   * <p>Created on 15:56 2019/4/8 0008
   *
   * @param obj 查询对象
   * @param fields 字段
   * @return java.util.List<java.lang.reflect.Field>
   */
  private static List<Field> filterFields(Object obj, String[] fields) {
    ArrayList<String> list = new ArrayList<>();
    Arrays.stream(fields).forEach(o -> list.add(underlineToHump(o)));
    return Arrays.stream(getAllFields(obj.getClass()))
        .filter(
            o -> list.contains(o.getName()) && ReflectUtils.invokeGetter(obj, o.getName()) != null)
        .collect(Collectors.toList());
  }

  private static Field[] getAllFields(Class<?> tar) {
    List<Field> fieldList = new ArrayList<>();
    Class<?> clazz = tar;
    while (clazz != null) {
      fieldList.addAll(Arrays.asList(clazz.getDeclaredFields()));
      clazz = clazz.getSuperclass();
    }
    return fieldList.toArray(new Field[fieldList.size()]);
  }

  /**
   * Author: Tablo
   *
   * <p>Description:[java属性名转字段值（驼峰->下划线）]
   *
   * <p>Created on 15:56 2019/4/8 0008
   *
   * @param property 属性名
   * @return java.lang.String
   */
  private static String buildField(String property) {
    if (property == null || "".equals(property.trim())) {
      return "";
    }
    StringBuilder sb = new StringBuilder(property.length());
    for (char c : property.toCharArray()) {
      if (Character.isUpperCase(c)) {
        sb.append(UNDERLINE);
        sb.append(Character.toLowerCase(c));
      } else {
        sb.append(c);
      }
    }
    return sb.toString();
  }

  /**
   * Author: Tablo
   *
   * <p>Description:[数据库字段转java属性]
   *
   * <p>Created on 15:57 2019/4/8 0008
   *
   * @param field
   * @return java.lang.String
   */
  private static String underlineToHump(String field) {
    StringBuilder result = new StringBuilder();
    String[] a = field.split("_");
    for (String s : a) {
      if (!field.contains("_")) {
        result.append(s);
        continue;
      }
      if (result.length() == 0) {
        result.append(s.toLowerCase());
      } else {
        result.append(s.substring(0, 1).toUpperCase());
        result.append(s.substring(1).toLowerCase());
      }
    }
    return result.toString();
  }
}
