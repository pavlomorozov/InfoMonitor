package aero.dnk.infomonitor.dao;

import org.springframework.dao.DataAccessException;
import aero.dnk.infomonitor.domain.Company;

public interface CompanyDAO {
	void saveCompany(Company company) throws DataAccessException;
	void removeCompany(Company company) throws DataAccessException;
	Company getCompany(Long id) throws DataAccessException;	
}
