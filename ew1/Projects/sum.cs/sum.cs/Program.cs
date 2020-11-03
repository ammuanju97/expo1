//using System;
/*using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace sum.cs
{
    class Program
    {
        static void Main(string[] args)
        {*/
            using System;
using System.Text;
public class sample
{
public void operations(float a, float b, out float s, out float p, ref string op)
// a and b are value parameters, s and p output parameters and op is a refernce parameter
{
s= a+b;
p = a*b;
op = String.Format(" {0} + {1} = {2}, {0} * {1} = {3} ",a,b,s,p);
}
}
public class sampledemo
{
public static void Main()
{
sample s=new sample();
float sum,prod;
string output="NULL";
s.operations(10.5F,23.4F,out sum,out prod,ref output);
Console.WriteLine("\n\n RESULT : Sum = {0} , Prod ={1} ,\n\n Reference String = {2} \n\n",sum,prod,output);
Console.ReadKey();
}
}
        
    

