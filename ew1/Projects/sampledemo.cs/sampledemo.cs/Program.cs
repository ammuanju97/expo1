using System;
//using System.Collections.Generic;
//using System.Linq;
using System.Text;
public class sample
{
    public void opertions(float a,float b,out float s,out float p,ref string op)
    {
        s=a+b;
        p=a*b;
        op=String.Format("{0}+{1}={2},{0}*{1}={3}",a,b,s,p);
}
}
 public class sampledemo
    {
       public static void Main()
        {
           sample s=new sample();
           float sum,prod;
           string output="NULL";
           s.opertions(10.5F,23.4F,out sum,out prod,ref output);
           Console.WriteLine("\n\nResult:Sum={0},Prod={1},\n\n Reference String={2}\n\n",sum,prod,output);
           Console.ReadKey();
       }
   }
        