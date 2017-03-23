
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
        	for(int j=-e.numCentros()-1; j<e.numSensores();++j){
        		Estado e1= new Estado(e.getGrafo(), e.getSensores(), e.getCentros());
        		e1.intercambia(i, j);
        		double v=h.getHeuristicValue(e1);
        		String S = "intercambio (" + i + ", " + j + ") " + "Coste:" + v;
        		r.add(new Successor(S, e1));
        		
        	}
        }
        return r;
	}
	

}
