package dao;

import java.util.List;

public interface GenericDao<T> {

	void creer(T t) throws DaoException;

	T trouver(long id) throws DaoException;

	List<T> lister() throws DaoException;

	void supprimer(long id) throws DaoException;

	void miseAJour(T t) throws DaoException;
}
