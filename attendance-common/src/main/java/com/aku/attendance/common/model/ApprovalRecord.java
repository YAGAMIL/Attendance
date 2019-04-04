package com.aku.attendance.common.model;

import com.aku.attendance.common.base.model.BaseModel;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.NoArgsConstructor;
import lombok.ToString;

/**
 * Description: 审批记录表，审批流程 Created on 2019/4/3 0003 20:33
 *
 * @author <a href="mailto: Tablo_Jhin1996@outlook.com">Tablo</a>
 * @version 1.0
 */
@EqualsAndHashCode(callSuper = true)
@Data
@ToString(callSuper = true)
@NoArgsConstructor
@TableName("approval_record")
public class ApprovalRecord extends BaseModel {

  /** 审批id */
  private Long approvalId;

  /** 申请描述 */
  private String description;

  /** 回复详情 */
  private String replyDesc;

  /** -1驳回，0申请，1通过，2回复 */
  private Integer approvalStatus;

  private static final long serialVersionUID = 1L;

}
