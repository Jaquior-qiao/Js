package dao;

import java.sql.SQLException;

public interface IProcessCredit {
	int creditProcess(String creditCard,double total) throws SQLException;
}
