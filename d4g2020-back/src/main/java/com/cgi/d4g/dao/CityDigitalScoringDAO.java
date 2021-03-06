package com.cgi.d4g.dao;

import java.util.Optional;

import javax.enterprise.context.ApplicationScoped;

import com.cgi.d4g.entity.CityDigitalScoring;

import io.quarkus.hibernate.orm.panache.PanacheRepository;

/**
 * DAO for the city digital scoring
 * @author ducf
 *
 */
@ApplicationScoped
public class CityDigitalScoringDAO implements PanacheRepository<CityDigitalScoring>{

	/**
	 * Find CityDigitalScoring by city
	 * @param cdsCityId the id of the city
	 * @return the CityDigitalScoring
	 */
  public Optional<CityDigitalScoring> getByCityId(long cdsCityId){
      return find("cdsCityId = ?1 ", cdsCityId).singleResultOptional();
  }
  
}
