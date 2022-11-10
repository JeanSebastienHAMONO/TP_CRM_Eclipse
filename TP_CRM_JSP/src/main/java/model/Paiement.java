package model;

public class Paiement {

	private Long id;
	private String numCarte;
	private String codeConf;
	private String banque;;
	private Client client;

	public Paiement() {
	}

	public Paiement(Long id, String numCarte, String codeConf, String banque, Client client) {
		this.setId(id);
		this.setNumCarte(numCarte);
		this.setCodeConf(codeConf);
		this.setBanque(banque);
		this.setClient(client);
	}

	public Paiement(String numCarte, String codeConf, String banque, Client client) {
		this.setNumCarte(numCarte);
		this.setCodeConf(codeConf);
		this.setBanque(banque);
		this.setClient(client);
	}

	/* Getters Setters */
	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getNumCarte() {
		return numCarte;
	}

	public void setNumCarte(String numCarte) {
		this.numCarte = numCarte;
	}

	public String getCodeConf() {
		return codeConf;
	}

	public void setCodeConf(String codeConf) {
		this.codeConf = codeConf;
	}

	public String getBanque() {
		return banque;
	}

	public void setBanque(String banque) {
		this.banque = banque;
	}

	public Client getClient() {
		return client;
	}

	public void setClient(Client client) {
		this.client = client;
	}

	@Override
	public String toString() {
		return "id: " + id + "; numéro de carte: " + numCarte + "; code confidentiel: " + codeConf + "; banque: "
				+ banque + "; client: " + client.toString();
	}

}
