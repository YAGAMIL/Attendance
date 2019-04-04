package com.aku.attendance.test;

import com.aku.attendance.api.AttendanceApiApplication;
import com.aku.attendance.common.model.Role;
import com.aku.attendance.system.service.IRoleService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.test.context.junit4.SpringRunner;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.TimeUnit;
import java.util.stream.IntStream;

/**
 * Description: Program:Attendance Created on 2019-03-18 16:27
 *
 * @author <a href="mailto: Tablo_Jhin1996@outlook.com">Tablo</a>
 * @version 1.0
 */
@RunWith(SpringRunner.class)
@SpringBootTest(classes = AttendanceApiApplication.class)
public class ApiApplicationTest {
    @Resource
    private IRoleService roleService;

    @Resource
    private RedisTemplate<String, Object> redisTemplate;

    @Test
    public void contextLoads() {
        Role role = new Role();
        role.setRoleLevel(1);
        role.setRoleName("导师");
        List<Role> roleList = new ArrayList<>();
        for (int i = 0; i < 100; i++) {
            roleService.save(role);
            roleList.add(role);
        }
        IntStream.range(0, roleList.size()).forEach(i -> {
            long here = System.currentTimeMillis();
            redisTemplate.opsForValue().set("777777", "TABLO_JHIN"+i, 10, TimeUnit.SECONDS);
            System.err.println(redisTemplate.opsForValue().get("777777"));
//            roleService.save(roleList.get(i));
            long there = System.currentTimeMillis();
            System.err.println("本次耗时" + (there - here));
        });
        /*roleList.forEach(role1 -> {
            long here =  System.currentTimeMillis();
//            long time1 = LocalDateTime.now().toInstant(ZoneOffset.of("+8")).toEpochMilli();
            roleService.save(role1);
//            long time2 = LocalDateTime.now().toInstant(ZoneOffset.of("+8")).toEpochMilli();
            long there =  System.currentTimeMillis();
            System.err.println("本次耗时" + (there - here));

//            System.err.println("本次耗时" + (time2 - time1));
        });*/
    }
}
