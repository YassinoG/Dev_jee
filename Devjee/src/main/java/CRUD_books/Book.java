package CRUD_books;

public class Book {

	
	private int id;
    private String titre;
    private String resume;
    private int annee;
    private String format;
    private int categorieId;

    public Book(int id, String titre, String resume, int annee, String format, int categorieId) {
        this.id = id;
        this.titre = titre;
        this.resume = resume;
        this.annee = annee;
        this.format = format;
        this.categorieId = categorieId;
    }
    
    

}
