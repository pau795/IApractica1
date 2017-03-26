import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import aima.search.framework.Successor;
import aima.search.framework.SuccessorFunction;

public class Sucesores implements SuccessorFunction{

	@SuppressWarnings("unchecked")
	public List getSuccessors(Object arg0) {
		ArrayList r = new ArrayList();
        Estado e = (Estado) arg0;
        Heuristico h = new Heuristico();
        
        HashMap<Integer,Integer> g = e.getGrafo();
        for(int i: g.keySet()){
        	for(int j=0; j<e.numSensores();++j){
        		if (j!=i){
	        		Estado e1= new Estado(e.getGrafo(), e.getSensores(), e.getCentros());
	        		e1.intercambia(i, j);
	        		double v=h.getHeuristicValue(e1);
	        		String S = "intercambio (" + i + ", " + j + ") " + "Coste:" + v+e1.getGrafo().toString();
	        		r.add(new Successor(S, e1));		
        		}
        	}
        	for(int j=0; j<e.numCentros();++j){
        		Estado e1= new Estado(e.getGrafo(), e.getSensores(), e.getCentros());
        		e1.intercambia(i, -j-1);
        		double v=h.getHeuristicValue(e1);
        		String S = "intercambio (" + i + ", " + (-j-1) + ") " + "Coste:" + v+e1.getGrafo().toString();
        		r.add(new Successor(S, e1));		
        	}
        }
        return r;
	}
	

}
