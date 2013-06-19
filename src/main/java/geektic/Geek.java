/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package geektic;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;


@Entity
@Table(name="GEEK")
public class Geek implements Serializable {
	
    @Id
    @SequenceGenerator(name = "geek", sequenceName = "seq", allocationSize = 1)
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "geek")
    private int id;
    
    private static final long serialVersionUID = 1L;
    
    private String nom;
    
    private String prenom;
    
    private String email;

    private String sexe;
    
    public Geek() {
        super();
    }
    
    public Geek(int id, String nom, String prenom, String email, String sexe) {
        this.id=id;
        this.nom = nom;
        this.prenom = prenom;
        this.email = email;
        this.sexe = sexe;
    }
    
    public String getSexe() {
		return sexe;
	}

	public void setSexe(String sexe) {
		this.sexe = sexe;
	}

	public long getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNom() {
        return nom;
    }

    public void setNom(String nom) {
        this.nom = nom;
    }

    public String getPrenom() {
        return prenom;
    }

    public void setPrenom(String prenom) {
        this.prenom = prenom;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }
    
}
