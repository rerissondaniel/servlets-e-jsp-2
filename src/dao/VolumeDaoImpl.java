package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import core.Volume;

public class VolumeDaoImpl implements Dao<Volume> {

	@Override
	public int insert(Volume entity) throws SQLException, ClassNotFoundException {
		ConnectionFactory.openConnection();
		Connection connection = ConnectionFactory.getConnection();
		PreparedStatement stmt = connection.prepareStatement(
				"insert into tb_volume values(?, ?, ?, ?, ?, ?, ?)",
				PreparedStatement.RETURN_GENERATED_KEYS);

		stmt.setInt(1, 0);
		stmt.setString(2, entity.getTitle());
		stmt.setString(3, entity.getDescription());
		stmt.setString(4, entity.getType());
		stmt.setString(5, entity.getPublisher());
		stmt.setInt(6, entity.getNumberOfPages());
		stmt.setInt(7, entity.getPublicationYear());

		stmt.execute();

		ResultSet resultSet = stmt.getGeneratedKeys();
		Integer id = null;

		while (resultSet.next()) {
			id = resultSet.getInt(1);
		}

		stmt.close();
		if (id != null) {
			stmt = connection.prepareStatement("insert into tb_volume_author values (?, ?)");
			stmt.setInt(1, id);

			for (String author : entity.getAuthors()) {
				stmt.setString(2, author);
				stmt.execute();
			}

			stmt.close();
		}

		ConnectionFactory.closeConnection();

		return id;
	}

	@Override
	public void delete(Volume entity) throws SQLException, ClassNotFoundException {
		if(entity == null) return;
		
		ConnectionFactory.openConnection();

		Connection connection = ConnectionFactory.getConnection();
		PreparedStatement stmt = connection
				.prepareStatement("delete from tb_volume where id_volume = ?");

		stmt.setInt(1, entity.getIdVolume());

		stmt.execute();

		stmt.close();

		ConnectionFactory.closeConnection();
	}

	@Override
	public List<Volume> getAll() throws SQLException, ClassNotFoundException {
		ConnectionFactory.openConnection();
		Connection connection = ConnectionFactory.getConnection();
		PreparedStatement stmt = connection.prepareStatement("select title from tb_volume");

		List<Volume> listVolumes = new ArrayList<Volume>();

		ResultSet resultSet = stmt.executeQuery();

		while (resultSet.next()) {
			listVolumes.add(this.searchByTitle(resultSet.getString("title")));
		}

		resultSet.close();
		stmt.close();
		ConnectionFactory.closeConnection();

		return listVolumes;
	}

	public Volume searchByTitle(String title) throws SQLException, ClassNotFoundException {
		ConnectionFactory.openConnection();
		Volume volume = null;

		Connection connection = ConnectionFactory.getConnection();
		PreparedStatement stmt = connection
				.prepareStatement("select * from tb_volume where title = ?");

		stmt.setString(1, title);

		ResultSet resultSet = stmt.executeQuery();

		while (resultSet.next()) {
			volume = new Volume();
			volume.setTitle(resultSet.getString("title"));
			volume.setDescription(resultSet.getString("description"));
			volume.setIdVolume(resultSet.getInt("id_volume"));
			volume.setPublicationYear(resultSet.getInt("publication_year"));
			volume.setPublisher(resultSet.getString("publisher"));
			volume.setType(resultSet.getString("type"));
		}

		resultSet.close();
		stmt.close();
		
		if(volume == null){
			return null;
		}
		
		stmt = connection.prepareStatement("select * from tb_volume_author where id_volume = ?");
		stmt.setInt(1, volume.getIdVolume());
		resultSet = stmt.executeQuery();

		List<String> listAuthors = new ArrayList<String>();

		while (resultSet.next()) {
			listAuthors.add(resultSet.getString("author_name"));
		}

		volume.setAuthors(listAuthors);

		resultSet.close();
		stmt.close();

		return volume;
	}
}