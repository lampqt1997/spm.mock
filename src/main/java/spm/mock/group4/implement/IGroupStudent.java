package spm.mock.group4.implement;

import java.io.Serializable;
import java.util.List;

import spm.mock.group4.entity.GroupStudent;

//vũ
public interface IGroupStudent<T, Id extends Serializable> {
	List<T> findAll();
	GroupStudent findByid(int id);
}
