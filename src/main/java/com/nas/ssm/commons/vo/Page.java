package com.nas.ssm.commons.vo;

import java.util.List;

import com.nas.ssm.commons.constant.Constants;

public class Page<T> {
	private int pageno;			// 当前页码
	private int pageStartIndex;	// 当前页起始索引 (计算)
	private int pageSize;		// 页面大小 (给定)
	private long totalRows;     // 总记录数 (查询)
	private long totalPages;	// 总页数，即最大页码 (计算)
	private List<T> datas;		// 当前页包含的具体数据 (查询)
	
	public Page() {				// 构造函数
		pageno = 1;
		pageSize = Constants.PAGE_SIZE;
	}
	
	public Page(int pageno, int pageSize) {
		if (pageno < 0) {
			pageno = 1;
		}
		if (pageSize < 0) {
			pageSize = Constants.PAGE_SIZE;
		}
		this.pageno = pageno;
		this.pageSize = pageSize;
	}

	public int getPageno() {
		return pageno;
	}

	public void setPageno(int pageno) {
		this.pageno = pageno;
	}

	public int getPageStartIndex() {	// 计算当前起始页索引
		return (pageno - 1) * pageSize;
	}

	public void setPageStartIndex(int pageStartIndex) {
		this.pageStartIndex = pageStartIndex;
	}

	public int getPageSize() {
		return pageSize;
	}

	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}

	public long getTotalRows() {
		return totalRows;
	}

	public void setTotalRows(long totalRows) {
		this.totalRows = totalRows;
	}

	public long getTotalPages() {		// 计算总页数
		totalPages = totalRows / pageSize;
		if (totalRows % pageSize != 0) {
			totalPages++;
		}
		return totalPages;
	}

	public void setTotalPages(long totalPages) {
		this.totalPages = totalPages;
	}

	public List<T> getDatas() {
		return datas;
	}

	public void setDatas(List<T> datas) {
		this.datas = datas;
	}

	@Override
	public String toString() {
		return "Page [pageno=" + pageno + ", pageStartIndex=" + pageStartIndex + ", pageSize=" + pageSize
				+ ", totalRows=" + totalRows + ", totalPages=" + totalPages + ", datas=" + datas + "]";
	}
	
	

}
