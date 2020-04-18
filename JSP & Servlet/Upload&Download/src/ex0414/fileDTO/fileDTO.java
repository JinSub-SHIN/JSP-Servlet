package ex0414.fileDTO;

public class fileDTO {

	private String name;
	private String subject;
	private String originalName;
	private String systemName;
	private long fileSize;
	private String saveDir;
	
	public fileDTO() {
		
	}
	
	public fileDTO(String name, String subject, String originalName, String systemName, long fileSize, String saveDir) {
		super();
		this.name = name;
		this.subject = subject;
		this.originalName = originalName;
		this.systemName = systemName;
		this.fileSize = fileSize;
		this.saveDir = saveDir;
	}

	public String getName() {
		return name;
	}

	public String getSubject() {
		return subject;
	}

	public String getOriginalName() {
		return originalName;
	}

	public String getSystemName() {
		return systemName;
	}

	public long getFileSize() {
		return fileSize;
	}

	public String getSaveDir() {
		return saveDir;
	}


	
	
	
}
