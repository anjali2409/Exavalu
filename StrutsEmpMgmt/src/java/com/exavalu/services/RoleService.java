/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.exavalu.services;

import com.exavalu.models.Role;
import com.exavalu.utils.JDBCConnectionManager;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;


/**
 *
 * @author LENOVO
 */
public class RoleService {
    
    public static ArrayList getAllRole() {
        ArrayList roleList = new ArrayList();

        try {
            Connection con = JDBCConnectionManager.getConnection();
            String sql = "SELECT * FROM employeedb.roles;";

            PreparedStatement preparedStatement = con.prepareStatement(sql);
            ResultSet rs = preparedStatement.executeQuery();

            while (rs.next()) {
                
                Role role = new Role();
                role.setRoleId(rs.getString("roleId"));
                role.setRoleName(rs.getString("roleName"));
                roleList.add(role);
            }

        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return roleList;
        
        }
    
}
