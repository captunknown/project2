package com.ian.project.repos;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.ian.project.models.Doot;

@Repository
public interface DootRepository extends CrudRepository<Doot, Long> {
	List<Doot> findAll();
	
}