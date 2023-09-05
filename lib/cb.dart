
class Cb {

  int error;
  String message;
  String user_id;
  String First_Name;
  String Last_Name;
  String Full_name;
  String Email;
  String Mobile_Number;
  String Door_no;
  String Ward_no;
  String Street_name;
  String Village_City_Name;
  String Taluk;
  String District;
  String State;
  String PINCode;
  String password;
  Object Account_Login_Status;
  String Account_Active_Status;
  String Password_Reset_count;
  String Password_Creation_date_time;
  String Person_Image;
  String ID_Proof_1_Aadhar;
  String BankName;
  String BankAccoutNumber;
  String IFSCcode;
  String Bank_Branch;
  String Bank_Address_PINCode;

	Cb.fromJsonMap(Map<String, dynamic> map): 
		error = map["error"],
		message = map["message"],
		user_id = map["user_id"],
		First_Name = map["First_Name"],
		Last_Name = map["Last_Name"],
		Full_name = map["Full_name"],
		Email = map["Email"],
		Mobile_Number = map["Mobile_Number"],
		Door_no = map["Door_no"],
		Ward_no = map["Ward_no"],
		Street_name = map["Street_name"],
		Village_City_Name = map["Village_City_Name"],
		Taluk = map["Taluk"],
		District = map["District"],
		State = map["State"],
		PINCode = map["PINCode"],
		password = map["password"],
		Account_Login_Status = map["Account_Login_Status"],
		Account_Active_Status = map["Account_Active_Status"],
		Password_Reset_count = map["Password_Reset_count"],
		Password_Creation_date_time = map["Password_Creation_date_time"],
		Person_Image = map["Person_Image"],
		ID_Proof_1_Aadhar = map["ID_Proof_1_Aadhar"],
		BankName = map["BankName"],
		BankAccoutNumber = map["BankAccoutNumber"],
		IFSCcode = map["IFSCcode"],
		Bank_Branch = map["Bank_Branch"],
		Bank_Address_PINCode = map["Bank_Address_PINCode"];

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['error'] = error;
		data['message'] = message;
		data['user_id'] = user_id;
		data['First_Name'] = First_Name;
		data['Last_Name'] = Last_Name;
		data['Full_name'] = Full_name;
		data['Email'] = Email;
		data['Mobile_Number'] = Mobile_Number;
		data['Door_no'] = Door_no;
		data['Ward_no'] = Ward_no;
		data['Street_name'] = Street_name;
		data['Village_City_Name'] = Village_City_Name;
		data['Taluk'] = Taluk;
		data['District'] = District;
		data['State'] = State;
		data['PINCode'] = PINCode;
		data['password'] = password;
		data['Account_Login_Status'] = Account_Login_Status;
		data['Account_Active_Status'] = Account_Active_Status;
		data['Password_Reset_count'] = Password_Reset_count;
		data['Password_Creation_date_time'] = Password_Creation_date_time;
		data['Person_Image'] = Person_Image;
		data['ID_Proof_1_Aadhar'] = ID_Proof_1_Aadhar;
		data['BankName'] = BankName;
		data['BankAccoutNumber'] = BankAccoutNumber;
		data['IFSCcode'] = IFSCcode;
		data['Bank_Branch'] = Bank_Branch;
		data['Bank_Address_PINCode'] = Bank_Address_PINCode;
		return data;
	}
}
