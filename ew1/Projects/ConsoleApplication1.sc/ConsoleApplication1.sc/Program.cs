/*using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace ConsoleApplication1.sc
{
    class Program
    {
        static void Main(string[] args)
        {
        }
    }
}*/
using System;
using System.Text;
public class sample
{
public void add(out int res, ref string op, params int[] nums)
{
res=0;
foreach (int x in nums) res=res+x;
op="The given numbers are added";
}
public void add(out string res, ref string op, params string[] words)
{
string str1="";
foreach (string word in words)
{
    string str = str1 + word;
    str1 = str;
}
res = str1;
op = "The given words are concatenated";
}
}
public class sampledemo
{
public static void Main()
{
sample s = new sample();
int num_res=0;
string string_res, output="NULL";
Console.WriteLine("\nBefore Calling add method with integer arguments\n\n Sum = {0} and Reference String : {1}",num_res,output);
Console.WriteLine( "\nCalling add method to find the sum of numbers");
s.add(out num_res,ref output, 10,20,30,40,50,60);
Console.WriteLine("\nSum = {0} and Reference String : {1}",num_res,output);
s.add(out num_res,ref output, 10,20,30,40,50,60,22,56,32,12);
Console.WriteLine("\nSum = {0} and Reference String : {1}",num_res,output);
string_res=""; output="NULL";
Console.WriteLine("\nBefore Calling add method with string arguments\n\n Concatenated String = {0} and Reference String : {1}",string_res,output);
Console.WriteLine( "\nCalling add method to concatante the given words");
s.add(out string_res,ref output, "abc ","bcd ","cde ", "def ");
Console.WriteLine("\nConcatenaed String = {0}and Reference String : {1}",string_res,output);
s.add(out string_res,ref output, "abc ","def ","ghi ", "jkl ","mno ");
Console.WriteLine("\nConcatenated String = {0} and Reference String : {1}",string_res,output);
Console.ReadKey();
}
}
