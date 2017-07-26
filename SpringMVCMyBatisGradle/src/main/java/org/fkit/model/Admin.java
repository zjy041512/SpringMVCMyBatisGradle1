package org.fkit.model;

import javax.persistence.Column;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Table(name = "admin")
public class Admin {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    @Column(name = "admin_name")
    private String adminName;
    @Column(name = "admin_pass")
    private String adminPass;

    /**
     * @return id
     */
    public Integer getId() {
        return id;
    }

    /**
     * @param id
     */
    public void setId(Integer id) {
        this.id = id;
    }

    /**
     * @return admin_name
     */
    public String getAdminName() {
        return adminName;
    }

    /**
     * @param adminName
     */
    public void setColorName(String adminName) {
        this.adminName = adminName == null ? null : adminName.trim();
    }
    /**
     * @return admin_pass
     */
    public String getAdminPass() {
        return adminPass;
    }

    /**
     * @param adminPass
     */
    public void setColorPass(String adminPass) {
        this.adminPass = adminPass == null ? null : adminPass.trim();
    }

	public void setAdminName(String adminname) {
		// TODO Auto-generated method stub
		
	}

	public void setAdminPass(String password) {
		// TODO Auto-generated method stub
		
	}
}
