package com.entity.vo;

import com.baomidou.mybatisplus.annotations.TableField;
import com.baomidou.mybatisplus.annotations.TableName;
import com.fasterxml.jackson.annotation.JsonFormat;
import org.springframework.format.annotation.DateTimeFormat;

import java.io.Serializable;
import java.util.Date;

/**
 * 违法处理业务
 * 手机端接口返回实体辅助类
 * （主要作用去除一些不必要的字段）
 */
@TableName("weifachulki")
public class WeifachulkiNewVO implements Serializable {
    private static final long serialVersionUID = 1L;

    /**
     * 主键
     */

    @TableField(value = "id")
    private Integer id;


    /**
     * 新闻名称
     */

    @TableField(value = "plate_number")
    private String plateNumber;


    /**
     * 新闻图片
     */

    @TableField(value = "violation_type")
    private String violationType;








    /**
     * 创建时间 show1 show2 nameShow
     */
    @JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
    @DateTimeFormat

    @TableField(value = "create_time")
    private Date createTime;


    /**
     * 设置：主键
     */
    public Integer getId() {
        return id;
    }


    /**
     * 获取：主键
     */

    public void setId(Integer id) {
        this.id = id;
    }
    /**
     * 设置：新闻名称
     */
    public String getPlateNumbe() {
        return  plateNumber;
    }


    /**
     * 获取：新闻名称
     */

    public void setPlateNumber(String plateNumber) {
        this.plateNumber = plateNumber;
    }
    /**
     * 设置：新闻图片
     */
    public String getViolationType() {
        return violationType;
    }

    public void setViolationType(String violationType) {
        this.violationType = violationType;
    }






    public Date getCreateTime() {
        return createTime;
    }


    /**
     * 获取：创建时间 show1 show2 nameShow
     */

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }


}
