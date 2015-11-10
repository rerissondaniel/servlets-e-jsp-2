package dao;

import java.sql.SQLException;
import java.util.List;

public interface Dao<T> {

	public int insert(T entity) throws SQLException, ClassNotFoundException;

	public void delete(T entity) throws SQLException, ClassNotFoundException;

	public abstract List<T> getAll() throws SQLException , ClassNotFoundException;

}
