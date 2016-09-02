// Tara Moses
// Database Management: Assignment 1
// August 28, 2016

import java.io.IOException;
import java.io.RandomAccessFile;
import java.util.Scanner;
import java.io.File;

public class readDB 
{
    // 						-----------------------
    //						|					  |
    //    					|   Global Variables  |
    //						|					  |
    // 						-----------------------
    
    static int RECORD_SIZE = 71;
    static int NUM_RECORDS = 4360;

    // 						-----------------
    //						|				|
    //    					|	   Main     |
    //						|				|
    // 						-----------------
    
    public static void main(String[] args) throws IOException 
    {
		// Variables
		Scanner in = new Scanner(System.in);
		int choice = -1;
		RandomAccessFile currentDB = null;
		String currentDBName = "";
		
		// Show the menu
		showMenu();
		
		do {
			// Get user's choice
			System.out.println();
			choice = getChoice(in);
			System.out.println();
			
			// 0: Testing ----------------------------------------------
			if (choice == 0) { 
				RandomAccessFile Din = new RandomAccessFile("input.txt", "r");
				String Id = "ID";
				int Experience = -1;
				String Married = "UNKNOWN";
				float Wage = (float) -1.0;
				String Industry = "INDUSTRY";
				String Record;
				
				Record = getRecord(Din, 3);
				System.out.println("getRecord(3): \n" + Record + "\n\n");

				Record = getRecord(Din, 2);
				System.out.println("getRecord(2): \n" + Record + "\n\n");

				Record = getRecord(Din, 99999);
				System.out.println("getRecord(99999): \n" + Record + "\n\n");

				Record = binarySearch(Din, "00175");
				System.out.println("binarySearch(00175): \n" + Record + "\n");

				Din.close();
				
			// 1: Create new database ----------------------------------
			} else if (choice == 1) { 
				System.out.print("Enter a name for the new database: ");
				String newDBName = in.nextLine();
				
				// Just in case they don't end it in .txt:
				if (!newDBName.substring(newDBName.length() - 4, newDBName.length()).equals(".txt")) {
					newDBName += ".txt";
				}
				
				// Create file, put a "0\n" in it, close file
				try {
					RandomAccessFile Din = new RandomAccessFile(newDBName, "rw");
					Din.writeBytes("0\n");
					Din.seek(0);
					
					String firstLine = Din.readLine();
					System.out.println("Database '" + newDBName + "' created. First line is: '" + firstLine + "'");
					
					Din.close();	
				} catch (IOException e) {
					System.out.println("Database '" + newDBName + "' could not be created.");
				}
			
			// 2: Open database ----------------------------------------
			} else if (choice == 2) {				
				if (currentDB != null) {
					System.out.println("Database '" + currentDBName + "' is already open. Please close it before opening another.");
				} else {
					System.out.print("Enter name of database to open: ");
					String tempDBName = in.nextLine();
				
					// Just in case they don't end it in .txt:
					if (!tempDBName.substring(tempDBName.length() - 4, tempDBName.length()).equals(".txt")) {
						tempDBName += ".txt";
					}
					
					// Check whether the DB specified exists
					File tempDB = new File(tempDBName);
					
					// If it exists, try to open it!
					if (tempDB.exists()) {
						currentDBName = tempDBName;
						try {
							currentDB = new RandomAccessFile(currentDBName, "rw");
							System.out.println("Database '" + currentDBName + "' is now open.");						
						} catch (IOException e) {
							System.out.println("Database '" + currentDBName + "' could not be opened.");
						}
					} else {
						System.out.println("Database '" + tempDBName + "' does not exist. Please create it first.");
					};
				}
				
			// 3: Close database ---------------------------------------
			} else if (choice == 3) {
				if (currentDB == null) {
					System.out.println("No database is open.");
				} else {
					currentDB.close();
					currentDB = null;
					System.out.println("Database '" + currentDBName + "' is now closed.");
					currentDBName = null;
				}
				
			// 4: Display record ---------------------------------------
			} else if (choice == 4) {
				System.out.print("What key would you like? ");
				String key = in.nextLine();
				
				// Check if key is actually a number
				while(!isAValidKey(key)) {
					System.out.print("Please input a number 0 or greater: ");
					key = in.nextLine();
				}
				
				// Now that we have a key, let's display the record!!
				String record = binarySearch(currentDB, keyIntToKeyString(key));
				System.out.println(record);
			
			// 5: Update record ------------------------------------------
			} else if (choice == 5) {
			
			// 6: Create report ----------------------------------------	
			} else if (choice == 6) {
			
			// 7: Add record -------------------------------------------	
			} else if (choice == 7) {
			
			// 8: Delete record ----------------------------------------
			} else if (choice == 8) {
			
			// 9: Quit -------------------------------------------------
			} else if (choice == 9) {
				System.out.println("Thank you for using the database.\n");
			}
		} while(choice != 9);
    }
    
    // 						-----------------
    //						|				|
    //    					|	Functions   |
    //						|				|
    // 						-----------------
    		
	public static void displayRecord() {
		
	}
	
	public static void updateRecord() {
		
	}
	
	public static void createReport() {
		
	}
	
	public static void addRecord() {
		
	}
	
	public static void deleteRecord() {
		
	}
    
    // 						------------------------
    //						|					   |
    //    					|	Helper Functions   |
    //						|					   |
    // 						------------------------
    
    /* Shows the menu to the user */
    public static void showMenu() {
		System.out.println("--- DATABASE ---\n");
		
		System.out.println("0) Testing\n" +
							"1) Create new database\n" +
							"2) Open database\n" +
							"3) Close database\n" +
							"4) Display record\n" +
							"5) Update record\n" +
							"6) Create report\n" +
							"7) Add record\n" +
							"8) Delete record\n" +
							"9) Quit");
	}
	
	/* Get user's choice of menu item */
	public static int getChoice(Scanner s) {
		System.out.print("Choose an option: ");
		String choiceStr = s.nextLine();
		
		while(!isAnOption(choiceStr)) {
			System.out.print("Please choose an option 0-9: ");
			choiceStr = s.nextLine();
		}
		
		return Integer.parseInt(choiceStr);
	}
	
	/* Check if user inputted a number 0-9 */
	public static boolean isAnOption(String str) {
		try {
			int n = Integer.parseInt(str);
			if (n < 0 || n > 9) return false;
		} catch (NumberFormatException e) {
			return false;
		}
		
		return true;
	}
	
	/* Check if user inputted a number at all */
	public static boolean isAValidKey(String str) {
		try {
			int n = Integer.parseInt(str);
			if (n < 0) return false;
		} catch (NumberFormatException e) {
			return false;
		}
		
		return true;
	}
	
	/* Get a five-digit String of the key from the key given.
	 * i.e. "12" -> "00012", "5" -> "00005", "1234" -> "01234" */
	public static String keyIntToKeyString(String k) {
		// Create a very long string...
		String keyStr = "00000" + k;
		
		// Then chop the extra 0s off the front :^)
		int length = keyStr.length();
		keyStr = keyStr.substring(keyStr.length() - 5, keyStr.length());
		
		return keyStr;
	}
	
    /*Get record number n-th (from 1 to 4360) */
    //public static String getRecord(RandomAccessFile Din, int recordNum) throws IOException 
    public static String getRecord(RandomAccessFile Din, int recordNum) throws IOException 
    {
    String record = "NOT_FOUND";
        if ((recordNum >=1) && (recordNum <= NUM_RECORDS))
        {
            Din.seek(0); // return to the top of the file
            Din.skipBytes(recordNum * RECORD_SIZE);
            record = Din.readLine();
        }
        return record;
    }

    /*Binary Search record id */
    public static String binarySearch(RandomAccessFile Din, String id) throws IOException 
    {
		//System.out.println("key = '" + id + "'");
		
		int Low = 0;
		int High = NUM_RECORDS;
		int Middle;
		String MiddleId;
		String record = "NOT_FOUND";
		boolean Found = false;

			while (!Found && (High >= Low)) 
			{
				Middle = (Low + High) / 2;
				record = getRecord(Din, Middle);
				MiddleId = record.substring(0,5);
		 
				int result = MiddleId.compareTo(id);
				if (result == 0)   // ids match
					Found = true;
				else if (result < 0)
					Low = Middle + 1;
				else
					High = Middle -1;
			}
			return record;
		}
}
