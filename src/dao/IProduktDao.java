package dao;

import java.util.List;

import model.Produkt;

/**
 * 
 * Interface, in der die Methoden zur Produktverwaltung definiert werden.
 * 
 */
public interface IProduktDao {
	public Produkt save(Produkt p);

	public List<Produkt> produitsParMC(String mc);

	public Produkt getProduit(Long id);

	public Produkt updateProduit(Produkt p);

	public void deleteProduit(Long id);

	public List<Produkt> getAllproduits();
}