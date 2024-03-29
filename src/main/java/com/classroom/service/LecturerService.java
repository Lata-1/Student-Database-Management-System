package com.classroom.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.classroom.dao.LecturerDao;
import com.classroom.modal.Lecturer;

@Service
public class LecturerService {

	@Autowired
	private LecturerDao lecturerDao;

	public Lecturer createLecturer(Lecturer lecturer) {
		return lecturerDao.save(lecturer);
	}

	public Lecturer getLectureById(String ID) {
		return lecturerDao.findById(ID);
	}

	public Lecturer updateLecturer(Lecturer lecturer) {
		return lecturerDao.update(lecturer);
	}

	public Lecturer deleteLecturer(Lecturer lecturer) {
		return lecturerDao.deleteById(lecturer);
	}
}
