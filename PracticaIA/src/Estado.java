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
	
	public Estado(HashMap<Integer, Integer> g, Sensores s, CentrosDatos d){
		Estado.s=s;
		Estado.d=d;
		GDA = new HashMap<Integer, Integer>();
		for (int k:g.keySet()){
			int n=g.get(k);
			GDA.put(k, n);
		}
	}
	
	public Estado (int ns, int nc,int seedS, int seedC){		//Propuesta de solucion inicial.
		s = new Sensores(ns, seedS);				//Se conecta cada sensor i a un centro c respecto i mod num_centros
		d = new CentrosDatos(nc, seedC);
		GDA = new HashMap<Integer, Integer>();
		for(int i=0; i<ns; ++i){
			GDA.put(i, -(i%nc)-1);
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
		
	
}
