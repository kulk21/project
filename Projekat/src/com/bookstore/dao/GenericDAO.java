package com.bookstore.dao;

import java.util.List;
// Genricni Data Access Object(DAO)
//definise klasicne crud operacije
//create,update,retrive i delete
//ove operacije su prisutne u svim DAO klasama
public interface GenericDAO<E> {
	
	public E create(E t);
	
	public E update(E t);
	
	public E get(Object id);
	
	public void delete(Object id);
	
	public List<E> listAll();
	
	public long count();
	
}
