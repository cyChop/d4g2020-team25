package com.cgi.d4g.dao;

import java.util.Optional;

import javax.enterprise.context.ApplicationScoped;

import com.cgi.d4g.entity.DepartmentDigitalScoring;

import io.quarkus.hibernate.orm.panache.PanacheRepository;

/**
 * DAO for the city digital scoring
 * @author ducf
 *
 */
@ApplicationScoped
public class DepartmentDigitalScoringDAO implements PanacheRepository<DepartmentDigitalScoring>{


	/**
	 * Find DepartmentDigitalScoring by city
	 * @param cddDepartementId the id of the department
	 * @return the DepartmentDigitalScoring
	 */
  public Optional<DepartmentDigitalScoring> getByDeptartmentId(long cddDepartementId){
      return find("cddDepartementId = ?1 ", cddDepartementId).singleResultOptional();
  }
}
