package com.cgi.d4g.rest;

import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;

import com.cgi.d4g.business.model.RegionDigitalScoringModel;
import com.cgi.d4g.business.model.ScoringResultModel;
import com.cgi.d4g.dao.CityDAO;
import com.cgi.d4g.dao.DepartmentDAO;
import com.cgi.d4g.dao.RegionDAO;
import com.cgi.d4g.entity.City;
import com.cgi.d4g.entity.CityDigitalScoring;
import com.cgi.d4g.entity.Department;
import com.cgi.d4g.entity.DepartmentDigitalScoring;
import com.cgi.d4g.entity.Region;

@Path("/rest/score")
@Produces(MediaType.APPLICATION_JSON)
public class ScoreResource {
	
	private final CityDAO cityDAO;
	private final DepartmentDAO departmentDAO;
	private final RegionDAO regionDAO;
    
	/**
	 * @param cityDAO
	 */
	public ScoreResource(CityDAO cityDAO, DepartmentDAO departmentDAO, RegionDAO regionDAO) {
		this.cityDAO = cityDAO;
		this.departmentDAO= departmentDAO;
		this.regionDAO=regionDAO;
	}

	/**
	 * List of all the city of a region.
	 * @param regionId the id of the region to filter
	 * @param name the name to filter
	 * @return list of city
	 */
    @GET
    @Path("/city/{cityId}")
    public ScoringResultModel getScoreByCity(@PathParam("cityId") long cityId) {
    	//TODO implemeter l'appel.
    	
    	City city=cityDAO.findById(cityId);
		CityDigitalScoring cityDigitalScoring = null;
		Department department = departmentDAO.findById(city.getDptId());
		DepartmentDigitalScoring departmentDigitalScoring = null;
		Region region = regionDAO.findById(department.getRgnId());
		RegionDigitalScoringModel regionDigitalScoring = null;
		return new ScoringResultModel(city, cityDigitalScoring, department, departmentDigitalScoring, region, regionDigitalScoring);
    }

}
