
import java.util.HashMap;

import IA.Red.Centro;
import IA.Red.Sensor;
import aima.search.framework.HeuristicFunction;

public class Heuristico implements HeuristicFunction  {

  
	public double distancia(int x1, int y1, int x2, int y2){
		int xy1=x1-y1;
		int xy2=x2-y2;
		xy1*=xy1;
		xy2*=xy2;
		return Math.sqrt(xy1+xy2);
	}
	
	public double coste(double dist, double dat){
		return dist*dist*dat;
	}
	
	public double getHeuristicValue(Object state) {
		Estado es = (Estado) state;
		HashMap<Integer,Integer> g = es.getGrafo();
		boolean[] visitados= new boolean[es.numSensores()];
		for(int i=0; i< visitados.length;++i) visitados[i]=false;
		double coste=0;
		double datos=0;
		for (int i:g.keySet()){
			Sensor s1 = es.getSensor(i);
			int n= g.get(i);
			double sumaparcial=0;
			int num=0;
			while (n >=0) {
				if (visitados[n]) return -1;
				visitados[n]=true;
				Sensor s2=es.getSensor(n);
				double dat =s1.getCapacidad();
				double dist = distancia(s1.getCoordX(), s1.getCoordY(), s2.getCoordX(), s2.getCoordY());
				sumaparcial+=dat;
				coste += dist*dist*sumaparcial;
				visitados[n]=true;
				s1=s2;
				n=g.get(n);
			}
			Centro c= es.getCentro(-n+1);
			double dat =s1.getCapacidad();
			double dist = distancia(s1.getCoordX(), s1.getCoordY(), c.getCoordX(), c.getCoordY());
			sumaparcial+=dat;
			datos+=dat;
			coste += dist*dist*sumaparcial;
		}
		return coste/datos;
	  }
	

  
}