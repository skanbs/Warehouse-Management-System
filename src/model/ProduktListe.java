package model;

import java.util.ArrayList;
import java.util.List;

public class ProduktListe {
	private String motCle;
	private List<Produkt> produits = new ArrayList<>();

	public String getMotCle() {
		return motCle;
	}

	public void setMotCle(String motCle) {
		this.motCle = motCle;
	}

	public List<Produkt> getProduits() {
		return produits;
	}

	public void setProduits(List<Produkt> produits) {
		this.produits = produits;
	}

}
