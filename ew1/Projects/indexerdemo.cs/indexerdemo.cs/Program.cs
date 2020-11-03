using System;
using System.Text;
class MyDate
{
int Day;
int Month;
int Year;
public int day { get { return Day;}}
public int month { get { return Month;}}
public int year { get { return Year;}}
public MyDate(int a, int b, int c)
{
Day=a; Month=b; Year=c;
}
public void disp()
{
Console.WriteLine(" Date : {0}/{1}/{2}",Day, Month, Year);
}
}
class IndexerDemo
{
MyDate md;
public int this[string s]
{
    get
    {
if (s=="Day") return md.day;
else if (s=="Month") return md.month;
else if (s=="Year") return md.year;
else return 0;
}
}
public IndexerDemo()
{
md=new MyDate(1,1,2016);
}
}
class indexerdemo
{
public static void Main()
{
IndexerDemo ind=new IndexerDemo();
Console.WriteLine("Date is {0}/{1}/{2}",ind["Day"], ind["Month"], ind["Year"]);
Console.ReadKey();
}
}