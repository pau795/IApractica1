import java.util.HashMap;

import IA.Red.Centro;
import IA.Red.CentrosDatos;
import IA.Red.Sensor;
import IA.Red.Sensores;

public class Estado {
	
	static Sensores s;
	static CentrosDatos d;
	HashMap<Integer, Integer> GDA; 	//Grafo Dirigido Aciclico. Relaciona identificadores <Sensor, Destino>
									// Si Destino >= 0, Destino Codifica un sensor. Sino, codifica un Centro
	/*HashMap para saber cuantos sensores tienen conectados cada sensor*/
	HashMap<Integer, Integer> SconnectS;
	/*HashMap para saber cuantos sensores tienen conectados cada centro*/
	HashMap<Integer, Integer> SconnectC;
	
	
	public Estado(HashMap<Integer, Integer> g, Sensores s, CentrosDatos d){
		Estado.s=s;
		Estado.d=d;
		for (int k:g.keySet()){
			int n=g.get(k);
			GDA.put(k, n);
		}
	}
	
	public Estado (int ns, int nc,int seed){		
		s = new Sensores(ns, seed);
		d = new CentrosDatos(nc, seed);
		/*Inicializamos los hashmap indicando que no tienen conexión alguna*/
		for (int i = 0; i < ns; ++i) {
			SconnectS.put(i, 0);
		}
		for (int i = 0 ; i < nc; ++i) {
			SconnectC.put(i, 0);
		}
		for(int i=0; i<ns; ++i){					//Propuesta de solucion inicial.
			GDA.put(i, -(i%nc)-1);				//Se conecta cada sensor i a un centro c respecto i mod num_centros
			/*Modificaremos las conexiones que tienen inicialmente*/
			SconnectC.put(-(i%nc)-1, (SconnectC.get(-(i%nc)-1))+1);
		}
	}
	
	public int numSensores(){
		return s.size();
	}
	public int numCentros(){
		return d.size();
	}
	
	public Sensores getSensores(){
		return s;
	}
	public CentrosDatos getCentros(){
		return d;
	}

	
	public Sensor getSensor(int pos){
		return s.get(pos);
	}
	
	public Centro getCentro(int pos){
		return d.get(pos);
	}
	
	HashMap<Integer, Integer> getGrafo(){
		return GDA;
	}
	
	void intercambia(int fuente, int destino){
		GDA.put(fuente, destino);
	}
	
	void intercambia2(int fuente, int destino) {
		
		/*Compruebo si me quiero conectar a un sensor
		 * y que el sensor al que me quiero conectar tenga menos de 3 conexiones*/
		if (destino >= 0 && SconnectS.get(destino) < 3) {
			GDA.put(fuente, destino);
			/*Modifico el numero de conexiones que tiene el destino*/
			SconnectS.put(destino, (SconnectS.get(destino))+1);
		}
		
		/*Compruebo si me quiero conectar a un centro
		 * y que el centro al que me quiero conectar tenga menos de 25 conexiones*/
		else if (destino < 0 && SconnectC.get(destino) < 25) {
			GDA.put(fuente, destino);
			/*Modifico el numero de conexiones que tiene el destino*/
			SconnectC.put(destino, (SconnectC.get(destino))+1);
		}
	}
}



