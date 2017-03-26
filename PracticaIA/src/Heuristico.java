


import java.util.HashMap;

import IA.Red.Centro;
import IA.Red.Sensor;
import aima.search.framework.HeuristicFunction;

public class Heuristico implements HeuristicFunction  {

	int[] referenciasS;
	int[] referenciasC;
	
	private void referencias(HashMap<Integer, Integer> g, int s, int c) {
		referenciasS = new int[s];
		referenciasC = new int[c];
		for (int i: g.keySet()){
			int n= g.get(i);
			if (n>=0) referenciasS[n]++;
			else referenciasC[-n-1]++;
		}
	}
	
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
		double[] datosAcomS = new double[es.numSensores()];
		double[] datosAcomC = new double[es.numCentros()];
		boolean[] visitados = new boolean[es.numSensores()];
		referencias(g, es.numSensores(), es.numCentros());
		double coste=0;
		double datos=0;
		int pasos=0;
		int num = 0;
		for(int i=0; i<es.numSensores();++i) datosAcomS[i]=es.getSensor(i).getCapacidad();
		for(int i=0; i<es.numSensores();++i) if (referenciasS[i]>3) return 99999999;
		for(int i=0; i<es.numCentros();++i) if (referenciasC[i]>25) return 99999999;
		while (num < es.numSensores()){
			for (int i=0; i< es.numSensores(); ++i){
				++pasos;
				if( pasos > es.numSensores()) return 9999999; //Se detecta un ciclo
				int s = referenciasS[i];
				if (s==0 && !visitados[i]){
					pasos=0; //porsiaca
					Sensor s1;
					s1= es.getSensor(i);
					int apuntado =g.get(i);
					double dist;
					if (apuntado >=0){
						Sensor s2=es.getSensor(apuntado);
						dist =  distancia(s1.getCoordX(), s1.getCoordY(), s2.getCoordX(), s2.getCoordY());
						referenciasS[apuntado]--;
						datosAcomS[apuntado]+=datosAcomS[i];
						if(datosAcomS[apuntado]>s2.getCapacidad()*3) datosAcomS[apuntado]=s2.getCapacidad()*3;
					}
					else {
						Centro c = es.getCentro(-apuntado-1);
						datosAcomC[-apuntado-1]+=datosAcomS[i];
						if(datosAcomC[-apuntado-1]>150) datosAcomC[-apuntado-1]=150;
						dist = distancia(s1.getCoordX(), s1.getCoordY(), c.getCoordX(), c.getCoordY());
					}
					coste += dist*dist*datosAcomS[i];
					++num;
					visitados[i]=true;
				}
			}
		}

		for(int i=0; i<es.numCentros();++i) datos+= datosAcomC[i];
		return coste/datos;
		
	}
}
		
		
		
		/*
		for (int i:g.keySet()){
			if (!visitados[i]){
				visitados[i]=true;
				Sensor s1 = es.getSensor(i);
				int n= g.get(i);
				double sumaparcial=0;
				while (n >=0) {
					visitados[n]=true;
					referenciasS[n]++;
					if (referenciasS[n]>3) return 999999999;
					Sensor s2=es.getSensor(n);
					double dat =s1.getCapacidad();
					double dist = distancia(s1.getCoordX(), s1.getCoordY(), s2.getCoordX(), s2.getCoordY());
					datosAcomS[n]+=dat;
					if(datosAcomS[n]>s2.getCapacidad()*3) return 999999999;
					sumaparcial+=dat;
					coste += dist*dist*sumaparcial;
					s1=s2;
					n=g.get(n);
				}
				referenciasC[-n-1]++;
				if (referenciasC[-n-1]>25) return 999999999;
				Centro c= es.getCentro(-n-1);
				double dat =s1.getCapacidad();
				double dist = distancia(s1.getCoordX(), s1.getCoordY(), c.getCoordX(), c.getCoordY());
				datosAcomC[-n-1]+=dat;
				if(datosAcomS[-n-1]>150) return 999999999;
				sumaparcial+=dat;
				datos+=dat;
				coste += dist*dist*sumaparcial;
			}
		}

		return coste/datos;
	  }*/

	

  
