import UIKit
import SQLite


class ViewController: UIViewController {
    
    
    var database: Connection!
    
    
    let usersTable = Table("users")
    let id = Expression<Int>("id")
    let name = Expression<String>("name")
    let email = Expression<String>("email")
    let complaint = Expression<String>("complaint")
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        do {
            let documentDirectory = try FileManager.default.url(for: .documentDirectory, in: .userDomainMask, appropriateFor: nil, create: true)
            let fileUrl = documentDirectory.appendingPathComponent("users").appendingPathExtension("sqlite3")
            let database = try Connection(fileUrl.path)
            self.database = database
        } catch {
            print(error)
            
        }
    }
    
    
    @IBAction func createTable() {
        print("CREATE TAPPED")
        
        
        let createTable = self.usersTable.create { (table) in
            table.column(self.id, primaryKey: true)
            table.column(self.name)
            table.column(self.email, unique: true)
            //table.column(self.complaint)
        }
        
        
        do {
            try self.database.run(createTable)
            print("Created Table")
        } catch {
            print(error)
        }
    }
    
    
    @IBAction func insertUser() {
        print("Rating now")
        let alert = UIAlertController(title: "Rate now", message: nil, preferredStyle: .alert)
        alert.addTextField { (tf) in tf.placeholder = "What did you eat? B/L/D" }
        alert.addTextField { (tf) in tf.placeholder = "Rate it on a scale of 1-5" }
        
        let action = UIAlertAction(title: "Submit", style: .default) { (_) in
            guard let name = alert.textFields?.first?.text,
                let email = alert.textFields?.last?.text
            
            else { return }
            print(name)
            print(email)
            
            
            let insertUser = self.usersTable.insert(self.name <- name, self.email <- email)
            
            
            do {
                try self.database.run(insertUser)
                print("Rating done")
            } catch {
                print(error)
            }
            
        }
        
        alert.addAction(action)
        present(alert, animated: true, completion: nil)
        
        
    }
    
    
   /* @IBAction func complaints() {
        print("Complaints")
        let alert = UIAlertController(title: "Complaints", message: nil, preferredStyle: .alert)
        alert.addTextField { (tf) in tf.placeholder = "Complaints" }
        
        let action = UIAlertAction(title: "Submit", style: .default) { (_) in
            guard let complaint = alert.textFields?.first?.text
                
                else { return }
            print(complaint)
            
            
            let complaints = self.usersTable.insert(self.complaint <- complaint)
            
            
            do {
                try self.database.run(complaints)
                print("Complaints")
            } catch {
                print(error)
            }
        
    }
    }
    */
    
    
    @IBAction func listUsers() {
        print("Showing All ratings Now")
        
        do {
            let users = try self.database.prepare(self.usersTable)
            for user in users {
                print("userId: \(user[self.id]), Meal: \(user[self.name]), Rating: \(user[self.email])")
            }
        } catch {
            print(error)
        }
        
    }
    
    
    
}


