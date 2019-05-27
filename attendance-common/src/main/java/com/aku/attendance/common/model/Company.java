package com.aku.attendance.common.model;

import com.aku.attendance.common.base.model.BaseModel;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.*;

/**
 * Description:公司 Created on 2019/4/3 0003 20:42
 *
 * @author <a href="mailto: Tablo_Jhin1996@outlook.com">Tablo</a>
 * @version 1.0
 */
@EqualsAndHashCode(callSuper = true)
@Data
@ToString(callSuper = true)
@RequiredArgsConstructor(staticName = "of")
@TableName("company")
public class Company extends BaseModel {

  /** 公司名称 */
  @NonNull
  private String companyName;

  /** 公司图标 */
  private String logo;

  private static final long serialVersionUID = 1L;
}
