import java.util.ArrayList;
import java.util.List;
import java.util.Random;

import aima.search.framework.Successor;
import aima.search.framework.SuccessorFunction;

public class SucesoresSA implements SuccessorFunction{

	@Override
	public List getSuccessors(Object arg0) {
		ArrayList r = new ArrayList();
      		Estado e = (Estado) arg0;
      		Heuristico h = new Heuristico();
		Random ran=new Random();
		int i, j;
		i=ran.nextInt(e.numSensores());
		do{
            		j=ran.nextInt(e.numSensores()+e.numCentros())-e.numCentros();
		} while (i==j);
		Estado e1= new Estado(e.getGrafo(), e.getSensores(), e.getCentros());
		e1.intercambia(i, j);
		double v=h.getHeuristicValue(e1);
		String S = "intercambio (" + i + ", " + j + ") " + "Coste:" + v+e1.getGrafo().toString();
		r.add(new Successor(S, e1));
		return r;		
	}
}
