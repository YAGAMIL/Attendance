package com.aku.attendance.common.utils;

import lombok.AccessLevel;
import lombok.NoArgsConstructor;
import org.apache.commons.lang3.StringUtils;
import org.apache.commons.lang3.Validate;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;

/**
 * Description:反射工具调用 Created on 2019/4/5 0005 18:43
 *
 * @author <a href="mailto: Tablo_Jhin1996@outlook.com">Tablo</a>
 * @version 1.0
 */
@NoArgsConstructor(access = AccessLevel.PRIVATE)
public class ReflectUtils {

  private static final String GETTER_PREFIX = "get";

  private static final String CGLIB_CLASS_SEPARATOR = "$$";

  private static Logger LOGGER = LoggerFactory.getLogger(ReflectUtils.class);

  /**
   * @param obj
   * @param propertyName
   * @return Object @Description [get方法]
   * @create 2019年2月26日 上午9:28:03
   * @author <a href="mailto:yangzhi01@camelotchina.com">杨智</a>
   */
  public static Object invokeGetter(Object obj, String propertyName) {
    Object object = obj;
    for (String name : StringUtils.split(propertyName, ".")) {
      String getterMethodName = GETTER_PREFIX + StringUtils.capitalize(name);
      object = invokeMethod(object, getterMethodName, new Class[] {}, new Object[] {});
    }
    return object;
  }

  /**
   * Author: Tablo
   * <p> Description:[调用对象方法，一次性调用，匹配参数，无视修饰符;多次调用使用Method]

   * Created on 18:56 2019/4/5 0005
   * @param obj 对象
   * @param methodName 方法名
   * @param parameterTypes 类型
   * @param args 对象数组
   * @return java.lang.Object
   **/
  private static Object invokeMethod(
      final Object obj,
      final String methodName,
      final Class<?>[] parameterTypes,
      final Object[] args) {
    Method method = getAccessibleMethod(obj, methodName, parameterTypes);
    if (method == null) {
      throw new IllegalArgumentException(
          "Could not find method [" + methodName + "] on target [" + obj + "]");
    }

    try {
      return method.invoke(obj, args);
    } catch (Exception e) {
      throw convertReflectionExceptionToUnchecked(e);
    }
  }

  /**
   * Author: Tablo
   * <p> Description:[设置方法忽略检查异常并返回方法，匹配函数名、参数列表]

   * Created on 18:54 2019/4/5 0005
   * @param obj 对象
   * @param methodName 方法名
   * @param parameterTypes 类数组
   * @return java.lang.reflect.Method
   **/
  private static Method getAccessibleMethod(
      final Object obj, final String methodName, final Class<?>... parameterTypes) {
    Validate.notNull(obj, "object can't be null");
    Validate.notBlank(methodName, "methodName can't be blank");

    for (Class<?> searchType = obj.getClass();
        searchType != Object.class;
        searchType = searchType.getSuperclass()) {
      try {
        Method method = searchType.getDeclaredMethod(methodName, parameterTypes);
        makeAccessible(method);
        return method;
      } catch (NoSuchMethodException e) {
        // Method不在当前类定义,继续向上转型
      }
    }
    // 未找到该方法时，返回null
    return null;
  }

  /**
   * Author: Tablo
   * <p> Description:[设置方法忽略访问检查]

   * Created on 18:53 2019/4/5 0005
   * @param method 方法
   **/
  private static void makeAccessible(Method method) {
    if ((!Modifier.isPublic(method.getModifiers())
        || !Modifier.isPublic(method.getDeclaringClass().getModifiers()))) {
      method.setAccessible(true);
    }
  }

  /**
   * Author: Tablo
   *
   * <p>Description:[checked exception转换为unchecked exception]
   *
   * <p>Created on 18:48 2019/4/5 0005
   *
   * @param e 异常
   * @return java.lang.RuntimeException
   */
  private static RuntimeException convertReflectionExceptionToUnchecked(Exception e) {
    if (e instanceof IllegalAccessException
        || e instanceof IllegalArgumentException
        || e instanceof NoSuchMethodException) {
      return new IllegalArgumentException(e);
    } else if (e instanceof InvocationTargetException) {
      return new RuntimeException(((InvocationTargetException) e).getTargetException());
    } else if (e instanceof RuntimeException) {
      return (RuntimeException) e;
    }
    return new RuntimeException("Unexpected Checked Exception.", e);
  }
}
