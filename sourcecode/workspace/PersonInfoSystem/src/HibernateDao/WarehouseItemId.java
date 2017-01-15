package HibernateDao;

import java.util.Date;

/**
 * WarehouseItemId generated by MyEclipse Persistence Tools
 */

public class WarehouseItemId implements java.io.Serializable {

	// Fields

	private Itemgeneral itemgeneral;

	private Warehouse warehouse;

	private Long safeStock;

	private Date lastCount;

	// Constructors

	/** default constructor */
	public WarehouseItemId() {
	}

	/** full constructor */
	public WarehouseItemId(Itemgeneral itemgeneral, Warehouse warehouse,
			Long safeStock, Date lastCount) {
		this.itemgeneral = itemgeneral;
		this.warehouse = warehouse;
		this.safeStock = safeStock;
		this.lastCount = lastCount;
	}

	// Property accessors

	public Itemgeneral getItemgeneral() {
		return this.itemgeneral;
	}

	public void setItemgeneral(Itemgeneral itemgeneral) {
		this.itemgeneral = itemgeneral;
	}

	public Warehouse getWarehouse() {
		return this.warehouse;
	}

	public void setWarehouse(Warehouse warehouse) {
		this.warehouse = warehouse;
	}

	public Long getSafeStock() {
		return this.safeStock;
	}

	public void setSafeStock(Long safeStock) {
		this.safeStock = safeStock;
	}

	public Date getLastCount() {
		return this.lastCount;
	}

	public void setLastCount(Date lastCount) {
		this.lastCount = lastCount;
	}

	public boolean equals(Object other) {
		if ((this == other))
			return true;
		if ((other == null))
			return false;
		if (!(other instanceof WarehouseItemId))
			return false;
		WarehouseItemId castOther = (WarehouseItemId) other;

		return ((this.getItemgeneral() == castOther.getItemgeneral()) || (this
				.getItemgeneral() != null
				&& castOther.getItemgeneral() != null && this.getItemgeneral()
				.equals(castOther.getItemgeneral())))
				&& ((this.getWarehouse() == castOther.getWarehouse()) || (this
						.getWarehouse() != null
						&& castOther.getWarehouse() != null && this
						.getWarehouse().equals(castOther.getWarehouse())))
				&& ((this.getSafeStock() == castOther.getSafeStock()) || (this
						.getSafeStock() != null
						&& castOther.getSafeStock() != null && this
						.getSafeStock().equals(castOther.getSafeStock())))
				&& ((this.getLastCount() == castOther.getLastCount()) || (this
						.getLastCount() != null
						&& castOther.getLastCount() != null && this
						.getLastCount().equals(castOther.getLastCount())));
	}

	public int hashCode() {
		int result = 17;

		result = 37
				* result
				+ (getItemgeneral() == null ? 0 : this.getItemgeneral()
						.hashCode());
		result = 37 * result
				+ (getWarehouse() == null ? 0 : this.getWarehouse().hashCode());
		result = 37 * result
				+ (getSafeStock() == null ? 0 : this.getSafeStock().hashCode());
		result = 37 * result
				+ (getLastCount() == null ? 0 : this.getLastCount().hashCode());
		return result;
	}

}