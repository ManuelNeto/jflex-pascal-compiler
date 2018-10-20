package core;

public class Token extends java_cup.runtime.Symbol {
  public Token(int type) {
    super(type, -1, -1, null);
  }

  public Token(int type, Object value) {
    super(type, -1, -1, value);
  }
  
  public String toString() {
	  return "sym: "+sym+(value == null ? "" : (", value: '"+value+"'"));
  }
}