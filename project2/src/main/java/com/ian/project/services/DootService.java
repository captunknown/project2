package com.ian.project.services;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ian.project.models.Doot;
import com.ian.project.repos.DootRepository;

@Service
public class DootService {
	@Autowired
	private final DootRepository dootRepo;

	public DootService(DootRepository dootRepo) {
		this.dootRepo = dootRepo;
	}

	// READ ALL
	public List<Doot> allDoot() {
		return dootRepo.findAll();
	}

	// CREATE
	public Doot createDoot(Doot post) {
		return dootRepo.save(post);
	}

	// READ ONE
	public Doot findDoot(Long id) {
		Optional<Doot> optionalDoot = dootRepo.findById(id);
		if (optionalDoot.isPresent()) {
			return optionalDoot.get();
		} else {
			return null;
		}

	}
	
	public Doot updateDoot(Doot post) {
		return dootRepo.save(post);
	}
	
	public void deleteDoot(Long id) {
		Optional<Doot> optionalDoot = dootRepo.findById(id);
		if(optionalDoot.isPresent()) {
			dootRepo.deleteById(id);
		}
		
	}

}
