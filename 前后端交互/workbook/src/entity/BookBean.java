package entity;

import java.io.Serializable;

public class BookBean implements Serializable {
	//isbn, title, copyright, publisherID, imageFile, price, author, description
	private String isbn;
	private String title;
	private String copyright;
	private int publisherID;
	private String imageFile;
	private double price;
	 //author, description
	private String author;
	private String description;
	public String getCopyright() {
		return copyright;
	}
	public void setCopyright(String copyright) {
		this.copyright = copyright;
	}
	public String getImageFile() {
		return imageFile;
	}
	public void setImageFile(String imageFile) {
		this.imageFile = imageFile;
	}
	public String getIsbn() {
		return isbn;
	}
	public void setIsbn(String isbn) {
		this.isbn = isbn;
	}
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}
	public int getPublisherID() {
		return publisherID;
	}
	public void setPublisherID(int publisherID) {
		this.publisherID = publisherID;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
    public String getAuthor()
    {
        return author;
    }
    public void setAuthor(String author)
    {
        this.author = author;
    }
    public String getDescription()
    {
        return description;
    }
    public void setDescription(String description)
    {
        this.description = description;
    }
	
}
