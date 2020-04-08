package com.industri.erp.project.masterdata.domain;

import java.math.BigDecimal;

import com.industri.erp.framework.web.domain.BaseEntity;

public class Supplier extends BaseEntity
{
	private static final long serialVersionUID = 1L;

	private Long id;
	private String number;
	private String name;
	private String address;
	private String address2;
	private String country;
	private String state;
	private String city;
	private String contact;
	private String phone;
	private String email;
	private String fax;
	private String remark;
	private Boolean taxable;
	private Boolean taxin;
	private BigDecimal taxRate;
	private String bank;
	private String bankAcct;
	private String taxIdNbr;
	private String acctPayable;
	private BigDecimal amtPayable;
	private BigDecimal amtPrePayment; 
	private String type;
	
	public Supplier () 
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

	public String getNumber()
	{
		return number;
	}

	public void setNumber(String number)
	{
		this.number = number;
	}

	public String getName()
	{
		return name;
	}

	public void setName(String name)
	{
		this.name = name;
	}

	public String getAddress()
	{
		return address;
	}

	public void setAddress(String address)
	{
		this.address = address;
	}

	public String getAddress2()
	{
		return address2;
	}

	public void setAddress2(String address2)
	{
		this.address2 = address2;
	}

	public String getCountry()
	{
		return country;
	}

	public void setCountry(String country)
	{
		this.country = country;
	}

	public String getState()
	{
		return state;
	}

	public void setState(String state)
	{
		this.state = state;
	}

	public String getCity()
	{
		return city;
	}

	public void setCity(String city)
	{
		this.city = city;
	}

	public String getContact()
	{
		return contact;
	}

	public void setContact(String contact)
	{
		this.contact = contact;
	}

	public String getPhone()
	{
		return phone;
	}

	public void setPhone(String phone)
	{
		this.phone = phone;
	}

	public String getEmail()
	{
		return email;
	}

	public void setEmail(String email)
	{
		this.email = email;
	}

	public String getFax()
	{
		return fax;
	}

	public void setFax(String fax)
	{
		this.fax = fax;
	}

	public String getRemark()
	{
		return remark;
	}

	public void setRemark(String remark)
	{
		this.remark = remark;
	}

	public Boolean getTaxable()
	{
		return taxable;
	}

	public void setTaxable(Boolean taxable)
	{
		this.taxable = taxable;
	}

	public Boolean getTaxin()
	{
		return taxin;
	}

	public void setTaxin(Boolean taxin)
	{
		this.taxin = taxin;
	}

	public BigDecimal getTaxRate()
	{
		return taxRate;
	}

	public void setTaxRate(BigDecimal taxRate)
	{
		this.taxRate = taxRate;
	}

	public String getBank()
	{
		return bank;
	}

	public void setBank(String bank)
	{
		this.bank = bank;
	}

	public String getBankAcct()
	{
		return bankAcct;
	}

	public void setBankAcct(String bankAcct)
	{
		this.bankAcct = bankAcct;
	}

	public String getTaxIdNbr()
	{
		return taxIdNbr;
	}

	public void setTaxIdNbr(String taxIdNbr)
	{
		this.taxIdNbr = taxIdNbr;
	}

	public String getAcctPayable()
	{
		return acctPayable;
	}

	public void setAcctPayable(String acctPayable)
	{
		this.acctPayable = acctPayable;
	}

	public BigDecimal getAmtPayable()
	{
		return amtPayable;
	}

	public void setAmtPayable(BigDecimal amtPayable)
	{
		this.amtPayable = amtPayable;
	}

	public BigDecimal getAmtPrePayment()
	{
		return amtPrePayment;
	}

	public void setAmtPrePayment(BigDecimal amtPrePayment)
	{
		this.amtPrePayment = amtPrePayment;
	}

	public String getType()
	{
		return type;
	}

	public void setType(String type)
	{
		this.type = type;
	}

}
