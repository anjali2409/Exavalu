/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.exavalu.services;

import com.exavalu.models.Department;
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
public class DepartmentService {
    
    public static ArrayList getAllDepartment() {
        
        ArrayList deptList = new ArrayList();

        try {
            Connection con = JDBCConnectionManager.getConnection();
            String sql = "SELECT * FROM employeedb.departments;";

            PreparedStatement preparedStatement = con.prepareStatement(sql);
            ResultSet rs = preparedStatement.executeQuery();

            while (rs.next()) {
                
                Department dep = new Department();
                dep.setDepartmentId(rs.getInt("departmentId"));
                dep.setDepartmentName(rs.getString("departmentName"));
                deptList.add(dep);
            }

        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return deptList;
        
        }
    
}
