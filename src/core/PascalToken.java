package core;

public class PascalToken {

	public String name;
	public String value;
	public Integer line;
	public Integer column;

	public PascalToken(String name, String value, Integer line, Integer column) {
		this.name = name;
		this.value = value;
		this.line = line;
		this.column = column;
	}
}