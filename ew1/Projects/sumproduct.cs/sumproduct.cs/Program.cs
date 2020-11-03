/*using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace sumproduct.cs
{
    class Program
    {
        static void Main(string[] args)
        {
        }
    }
}*/
/*
a program that declares a function with 2 float value parameters, 2 output parameters to hold the
sum & product and one reference parameter to send the result in the following string format “ 5 + 6
= 11, 5 * 6 =30”, The string is passed with value “NULL” to the function.
*/
using System;
using System.Text;
public class sumproduct
{
public void operations(float a, float b, out float s, out float p, ref string op)
// a and b are value parameters, s and p output parameters and op is a refernce parameter
{
s = a+b;
p = a*b;
op = String.Format(" {0} + {1} = {2}, {0} * {1} = {3} ",a,b,s,p);
}
}
public class sumproduct1
{
public static void Main()
{
sumproduct1 s=new sumproduct1();
float sum,prod;
string output="NULL";
s.operations(10.5F,23.4F,out sum,out prod,ref output);
Console.WriteLine("\n\n RESULT : Sum = {0} , Prod ={1} ,\n\n Reference String = {2} \n\n",sum,prod,output);
}
}
