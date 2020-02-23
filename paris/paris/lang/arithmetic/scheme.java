
public class eval_0_1 extends Strategy {
	
  public static Strategy instance = new eval_0_1();
  
  public IStrategoTerm invokeDynamic(IStrategoTerm term, Stratego[] sargs, IStrategoTerm[] targs) {
	 // try Not rule
     term = notb_0_0.instance.invoke(term);
     // try Add rule 
     // ...
     return term;
  }

}

public class eval_0_1 extends RegisteringStrategy { 
	
  public static final Strategy instance = new eval_0_1();

  public static Strategy getStrategy(Context context) {
    return context.getStrategyCollector().getStrategyExecutor("eval_0_1");
  }

  public void registerImplementators(StrategyCollector collector) { 
	collector.registerStrategyImplementator("eval_0_1", instance);
  }

  public void bindExecutors(StrategyCollector collector) { ... }

  public IStrategoTerm invokeDynamic(IStrategoTerm term, IStrategoTerm arg1) { 
	  // apply the Not rule  
	  term = Main.notb_0_0.invoke(term); 
	  // note the difference in invocation! 
	  return term; 
  }
}
