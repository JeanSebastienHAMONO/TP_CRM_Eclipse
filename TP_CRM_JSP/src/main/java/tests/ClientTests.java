package tests;

import java.util.List;

import dao.AdresseDao;
import dao.ClientDao;
import dao.DaoFactory;
import model.Client;

public class ClientTests {

	public static void main(String[] args) {
		try {
			AdresseDao adresseDao = DaoFactory.getInstance().getAdresseDao();
            ClientDao clientDao = DaoFactory.getInstance().getClientDao();
            
            afficherListClients(clientDao);

		} catch (Exception e) {
			e.printStackTrace();
		}

	}

	public static void afficherListClients(ClientDao clientDao) {
		try {
			List<Client> listClients = clientDao.lister();
			System.out.println("---------------------------");
			for(Client a : listClients) {
				System.out.println(a);
			}
			System.out.println("---------------------------");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
