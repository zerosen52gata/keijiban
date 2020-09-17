package bean;

public class book {
private String id;
private String name;
private String author;
private String publisher;
private String isbn;
private String borrow;
public book(String id, String name, String author, String publisher, String isbn, String borrow) {
	super();
	this.id = id;
	this.name = name;
	this.author = author;
	this.publisher = publisher;
	this.isbn = isbn;
	this.borrow = borrow;
}

public book(String id, String name, String author, String publisher, String isbn) {
	super();
	this.id = id;
	this.name = name;
	this.author = author;
	this.publisher = publisher;
	this.isbn = isbn;
}

public String getId() {
	return id;
}
public void setId(String id) {
	this.id = id;
}
public String getName() {
	return name;
}
public void setName(String name) {
	this.name = name;
}
public String getAuthor() {
	return author;
}
public void setAuthor(String author) {
	this.author = author;
}
public String getPublisher() {
	return publisher;
}
public void setPublisher(String publisher) {
	this.publisher = publisher;
}
public String getIsbn() {
	return isbn;
}
public void setIsbn(String isbn) {
	this.isbn = isbn;
}
public String getBorrow() {
	return borrow;
}
public void setBorrow(String borrow) {
	this.borrow = borrow;
}

}
