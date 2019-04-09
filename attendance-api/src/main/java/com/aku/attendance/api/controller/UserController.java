package com.aku.attendance.api.controller;

import com.aku.attendance.common.base.constant.ResultBean;
import com.aku.attendance.common.model.User;
import com.aku.attendance.system.service.IUserService;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;

/**
 * Description:用户API Program:Attendance Created on 2019-03-20 08:57
 *
 * @author <a href="mailto: Tablo_Jhin1996@outlook.com">Tablo</a>
 * @version 1.0
 */
@RestController
@RequestMapping("/user")
@Api("用户接口")
public class UserController {
  @Resource private IUserService userService;

  @ApiOperation("新增用户")
  @PostMapping("/")
  public ResultBean newStaff(User user) {
    return ResultBean.of(userService.newStaff(user));
  }

  @ApiOperation("删除用户")
  @DeleteMapping("/{userId}")
  public ResultBean removeStaff(@PathVariable Long userId) {
    return ResultBean.of(userService.removeById(userId));
  }

  @ApiOperation("编辑更新用户")
  @PutMapping("/")
  public ResultBean changeStaff(User user){
      return ResultBean.of(userService.modifyUser(user));
  }
  @ApiOperation("分页查询用户")
  @GetMapping("/")
  public ResultBean queryUser(Page<User> page, User user) {
    return ResultBean.of(userService.page(page));
  }

  @PostMapping("excel")
  public ResultBean importExcel(MultipartFile file, HttpServletResponse response) {
    return null;
  }
}
