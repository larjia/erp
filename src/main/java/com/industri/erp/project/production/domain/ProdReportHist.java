package com.industri.erp.project.production.domain;

import java.sql.Date;

import com.industri.erp.framework.aspectj.lang.annotation.Excel;
import com.industri.erp.framework.aspectj.lang.annotation.Excel.ColumnType;
import com.industri.erp.framework.web.domain.BaseEntity;

/**
 * 车间质量PPM报表
 * @author Administrator
 *
 */
public class ProdReportHist extends BaseEntity
{
	private static final long serialVersionUID = 1L;
	
	// Id
	private Long id;
	
	// 生产日期
	@Excel(name = "生产日期", dateFormat = "yyyy-MM-dd")
	private Date prodDate;
	
	// 填报日期
	@Excel(name = "填报日期", dateFormat = "yyyy-MM-dd")
	private Date reportDate;
	
	// 生产开始时间
	@Excel(name = "开始时间")
	private String startTime;
	
	// 生产结束时间
	@Excel(name = "结束日期")
	private String endTime;
	
	// 产品名称(物料项目名称)
	@Excel(name = "产品名称")
	private String partProjName;
	
	// 物料号号(ERP编码)
	@Excel(name = "物料号")
	private String partNumber;
	
	// 零件名称
	@Excel(name = "零件名称")
	private String componentName;
	
	// 批序号
	@Excel(name = "批序号")
	private String serialNumber;
	
	// 车间部门
	@Excel(name = "车间部门")
	private String dept;
	
	// 班组
	@Excel(name = "车间班组")
	private String group;
	
	// 工序
	@Excel(name = "工序")
	private String op;
	
	// 操作员
	@Excel(name = "操作员")
	private String operator;
	
	// 班次 0白班 1夜班
	@Excel(name = "班次", readConverterExp = "0=白班,1=夜班")
	private String shift;
	
	// 不良原因
	@Excel(name = "不良原因")
	private String rejectReason;
	
	// 完成数
	@Excel(name = "完成数", cellType = ColumnType.NUMERIC)
	private Integer qtyCompleted;
	
	// 不良数
	@Excel(name = "不良数", cellType = ColumnType.NUMERIC)
	private Integer qtyRejected;
	
	// 报废数
	@Excel(name = "报废数", cellType = ColumnType.NUMERIC)
	private Integer qtyScrapped;
	
	// 合格数
	@Excel(name = "合格数", cellType = ColumnType.NUMERIC)
	private Integer qtyAccepted;
	
	// FTQ
	@Excel(name = "FTQ", cellType = ColumnType.NUMERIC)
	private Double ftq;
	
	// PPM
	@Excel(name = "PPM", cellType = ColumnType.NUMERIC)
	private Double ppm;
	
	public ProdReportHist()
	{
	}

	public Long getId()
	{
		return id;
	}

	public void setId(Long id)
	{
		this.id = id;
	}

	public Date getProdDate()
	{
		return prodDate;
	}

	public void setProdDate(Date prodDate)
	{
		this.prodDate = prodDate;
	}

	public String getPartNumber()
	{
		return partNumber;
	}

	public void setPartNumber(String partNumber)
	{
		this.partNumber = partNumber;
	}

	public String getDept()
	{
		return dept;
	}

	public void setDept(String dept)
	{
		this.dept = dept;
	}

	public String getGroup()
	{
		return group;
	}

	public void setGroup(String group)
	{
		this.group = group;
	}

	public String getOp()
	{
		return op;
	}

	public void setOp(String op)
	{
		this.op = op;
	}

	public Integer getQtyCompleted()
	{
		return qtyCompleted;
	}

	public void setQtyCompleted(Integer qtyCompleted)
	{
		this.qtyCompleted = qtyCompleted;
	}

	public Integer getQtyRejected()
	{
		return qtyRejected;
	}

	public void setQtyRejected(Integer qtyRejected)
	{
		this.qtyRejected = qtyRejected;
	}

	public Integer getQtyScrapped()
	{
		return qtyScrapped;
	}

	public void setQtyScrapped(Integer qtyScrapped)
	{
		this.qtyScrapped = qtyScrapped;
	}

	public Integer getQtyAccepted()
	{
		return qtyAccepted;
	}

	public void setQtyAccepted(Integer qtyAccepted)
	{
		this.qtyAccepted = qtyAccepted;
	}

	public Double getFtq()
	{
		return ftq;
	}

	public void setFtq(Double ftq)
	{
		this.ftq = ftq;
	}

	public Double getPpm()
	{
		return ppm;
	}

	public void setPpm(Double ppm)
	{
		this.ppm = ppm;
	}

	public String getShift()
	{
		return shift;
	}

	public void setShift(String shift)
	{
		this.shift = shift;
	}

	public String getOperator()
	{
		return operator;
	}

	public void setOperator(String operator)
	{
		this.operator = operator;
	}

	public Date getReportDate()
	{
		return reportDate;
	}

	public void setReportDate(Date reportDate)
	{
		this.reportDate = reportDate;
	}

	public String getStartTime()
	{
		return startTime;
	}

	public void setStartTime(String startTime)
	{
		this.startTime = startTime;
	}

	public String getEndTime()
	{
		return endTime;
	}

	public void setEndTime(String endTime)
	{
		this.endTime = endTime;
	}

	public String getPartProjName()
	{
		return partProjName;
	}

	public void setPartProjName(String partProjName)
	{
		this.partProjName = partProjName;
	}

	public String getComponentName()
	{
		return componentName;
	}

	public void setComponentName(String componentName)
	{
		this.componentName = componentName;
	}

	public String getSerialNumber()
	{
		return serialNumber;
	}

	public void setSerialNumber(String serialNumber)
	{
		this.serialNumber = serialNumber;
	}

	public String getRejectReason()
	{
		return rejectReason;
	}

	public void setRejectReason(String rejectReason)
	{
		this.rejectReason = rejectReason;
	}
	
}
