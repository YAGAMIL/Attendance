package com.aku.attendance.common.base.constant;

import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import lombok.Data;
import lombok.ToString;

import java.util.Optional;

/**
 * Description:分页条件 Program:Attendance Created on 2019-03-20 09:06
 *
 * @author <a href="mailto: Tablo_Jhin1996@outlook.com">Tablo</a>
 * @version 1.0
 */
@Data
@ToString
public class PageQuery<T> {
  private Long pageNum;

  private Long pageSize;

  public Page<T> page() {
    return new Page<>(
        Optional.ofNullable(this.getPageNum()).orElse(new Page<>().getCurrent()),
        Optional.ofNullable(this.getPageSize()).orElse(new Page<>().getSize()));
  }

  public PageQuery<T> init() {
    this.pageNum = this.pageNum == null ? 0 : this.pageNum;
    this.pageSize = this.pageSize == null ? 10 : this.pageSize;
    return this;
  }
}
