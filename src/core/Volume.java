package core;

import java.util.List;

public class Volume {
	List<String> authors;
	
	Integer idVolume;
	
	String title;
	String description;
	String type;
	String publisher;
	
	int numberOfPages;
	int publicationYear;

	public Volume() {
		super();
	}

	public Volume(String title, List<String> authors, String description, String type,
			int numberOfPages, int publicationYear, String publisher) {
		super();
		this.title = title;
		this.authors = authors;
		this.description = description;
		this.type = type;
		this.numberOfPages = numberOfPages;
		this.publicationYear = publicationYear;
		this.publisher = publisher;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public List<String> getAuthors() {
		return authors;
	}

	public void setAuthors(List<String> authors) {
		this.authors = authors;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public int getNumberOfPages() {
		return numberOfPages;
	}

	public void setNumberOfPages(int numberOfPages) {
		this.numberOfPages = numberOfPages;
	}

	public int getPublicationYear() {
		return publicationYear;
	}

	public void setPublicationYear(int publicationYear) {
		this.publicationYear = publicationYear;
	}

	public String getPublisher() {
		return publisher;
	}

	public void setPublisher(String publisher) {
		this.publisher = publisher;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public Integer getIdVolume() {
		return idVolume;
	}

	public void setIdVolume(Integer idVolume) {
		this.idVolume = idVolume;
	}

	@Override
	public String toString() {
		return "Volume [authors=" + authors + ", idVolume=" + idVolume + ", title=" + title
				+ ", description=" + description + ", type=" + type + ", publisher=" + publisher
				+ ", numberOfPages=" + numberOfPages + ", publicationYear=" + publicationYear + "]";
	}

}
