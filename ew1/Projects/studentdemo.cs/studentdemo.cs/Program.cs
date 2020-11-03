/*using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace studentdemo.cs
{
    class Program
    {
        static void Main(string[] args)
        {
        }
    }
*/
using System;
public class Student
{
string firstname,lastname;
int _class;
int rank;
public string Name {
get { return firstname+lastname; }
}
public string Class{
get
    {
if (_class == 1) return "BCA";
else if (_class == 2) return "BBA";
else if (_class == 3) return "BCom";
else return "INVLID CODE";
}
}
public int Rank {
    set { rank=value;}
get { return rank;}
}
public Student(string fn, string ln, int cl, int rnk)
{
firstname=fn; lastname=ln;
    _class=cl; rank=rnk;
}
}
public class studentdemo
{
    public static void Main()
    {
        Student stud;
        Console.WriteLine("\n Enter the student details");
        Console.WriteLine("\n Enter the firstname : ");
        string fn = Console.ReadLine();
        Console.WriteLine("\n Enter the lastname : ");
        string ln = Console.ReadLine();
        Console.WriteLine("\n Enter the classcode : ");
        int cl = Convert.ToInt32(Console.ReadLine());
        Console.WriteLine("\n Enter the rank : ");
        int rnk = Convert.ToInt32(Console.ReadLine());
        stud = new Student(fn, ln, cl, rnk);
        //using properties to access private values
        Console.WriteLine("\n\nStudent Details :");
        Console.WriteLine("NAME : {0}", stud.Name);
        Console.WriteLine("CLASS : {0}", stud.Class);
        Console.WriteLine("RANK : {0}", stud.Rank);
        Console.ReadKey();

    }
}