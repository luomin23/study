package com.asiainfo.chapter1.liuwy.August08;

import java.io.IOException;
import java.sql.SQLException;

/**
 * Created by LENOVO on 2017/8/8.
 */
public class PersonBIZ {
    public boolean save(Person person){
        PersonDao personDao=new PersonDao();
        try {
            try {
                personDao.save(person);
            } catch (IOException e) {
                e.printStackTrace();
            }
            return true;
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
            return false;
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }finally {
            DBUtils.closeConnection();
        }
    }

    public Person findByPhone(int phonenumber){
        PersonDao personDao=new PersonDao();
        try {
            return personDao.findByPhone(phonenumber);
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
            return null;
        } catch (SQLException e) {
            e.printStackTrace();
            return null;
        }finally {
            DBUtils.closeConnection();
        }
    }
}
