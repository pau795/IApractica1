import java.util.HashMap;

import IA.Red.Centro;
import IA.Red.CentrosDatos;
import IA.Red.Sensor;
import IA.Red.Sensores;

public class Estado {
	
	static Sensores s;
	static CentrosDatos d;
	HashMap<Integer, Integer> GDA;
	
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
		for(int i=0; i<ns; ++i){
			GDA.put(i, -(i%nc));
		}
	}
	
	public int numSensores(){
		return s.size();
	}
	public int numCentros(){
		return d.size();
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



