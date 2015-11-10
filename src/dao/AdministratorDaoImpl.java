package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import core.Administrator;

public class AdministratorDaoImpl implements Dao<Administrator> {
	
	@Override
	public int insert(Administrator entity) throws SQLException, ClassNotFoundException{
		ConnectionFactory.openConnection();
		Connection connection = ConnectionFactory.getConnection();
		PreparedStatement stmt = connection.prepareStatement("insert into tb_admin values(?, ?, ?)", PreparedStatement.RETURN_GENERATED_KEYS);
		
		stmt.setInt(1, 0);
		stmt.setString(2, entity.getName());
		stmt.setString(3, entity.getPassword());
		
		stmt.execute();
		
		ResultSet resultSet = stmt.getGeneratedKeys();
		Integer id = null;
		
		while(resultSet.next()){
			id = resultSet.getInt(1);
		}
		
		stmt.close();
		ConnectionFactory.closeConnection();
		return id;
	}

	public Administrator searchByName(String name) throws SQLException, ClassNotFoundException{
		ConnectionFactory.openConnection();
		Administrator admin = null;
		
		Connection connection = ConnectionFactory.getConnection();
		PreparedStatement stmt = connection.prepareStatement("select * from tb_admin where name = ?");
		
		stmt.setString(1, name);
		
		ResultSet resultSet = stmt.executeQuery();
		
		while(resultSet.next()){
			admin = new Administrator();
			admin.setName(resultSet.getString("name"));
			admin.setPassword(resultSet.getString("password"));
		}
		
		stmt.close();
		ConnectionFactory.closeConnection();
		
		return admin;
	}
	
	@Override
	public void delete(Administrator entity) throws SQLException, ClassNotFoundException{

	}

	@Override
	public List<Administrator> getAll() throws SQLException, ClassNotFoundException{
		return null;
	}
}
