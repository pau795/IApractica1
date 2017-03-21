
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
		int[] referenciasS = new int[es.numSensores()];
		int[] referenciasC = new int[es.numCentros()];
		double[] datosAcomS = new double[es.numSensores()];
		double[] datosAcomC = new double[es.numCentros()];
		for(int i=0; i< referenciasS.length;++i) {
			referenciasS[i]=0;
			datosAcomS[i]=es.getSensor(i).getCapacidad();
		}
		for(int i=0; i< referenciasC.length;++i) {
			referenciasC[i]=0;
			datosAcomC[i]=0;
		}
		double coste=0;
		double datos=0;
		for (int i:g.keySet()){
			Sensor s1 = es.getSensor(i);
			int n= g.get(i);
			double sumaparcial=0;
			int num=0;
			while (n >=0) {
				referenciasS[n]++;
				if (referenciasS[n]>3) return -1;
				Sensor s2=es.getSensor(n);
				double dat =s1.getCapacidad();
				double dist = distancia(s1.getCoordX(), s1.getCoordY(), s2.getCoordX(), s2.getCoordY());
				datosAcomS[n]+=dat;
				if(datosAcomS[n]>s2.getCapacidad()*3) return -1;
				sumaparcial+=dat;
				coste += dist*dist*sumaparcial;
				s1=s2;
				n=g.get(n);
			}
			referenciasC[-n+1]++;
			if (referenciasC[-n+1]>25) return -1;
			Centro c= es.getCentro(-n+1);
			double dat =s1.getCapacidad();
			double dist = distancia(s1.getCoordX(), s1.getCoordY(), c.getCoordX(), c.getCoordY());
			datosAcomC[-n+1]+=dat;
			if(datosAcomS[-n+1]>150) return -1;
			sumaparcial+=dat;
			datos+=dat;
			coste += dist*dist*sumaparcial;
		}
		return coste/datos;
	  }
	

  
}