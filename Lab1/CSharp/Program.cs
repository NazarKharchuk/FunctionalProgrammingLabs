using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CSharp
{
    class Program
    {
        static void Main(string[] args)
        {
            Console.WriteLine("Lab 1(C#)\n");

            /*      1      */
            /*Створити функцію Singleton, яка приймає на вхід один аргумент і повертає список із одного елемента (аргумента функції).*/

            List<T> Singleton<T>(T argument)
            {
                List<T>  result = new List<T>();
                result.Add(argument);
                return result;
            }

            Console.WriteLine("\tFunction #1");
            Console.WriteLine("With arguments: 1");
            List<int> singleton_res = Singleton(1);
            Console.WriteLine(singleton_res[0]);
            Console.WriteLine("With arguments: 9");
            singleton_res = Singleton(9);
            Console.WriteLine(singleton_res[0]);

            /*      2      */
            /*Створити функцію null, яка приймає на вхід список і повертає boolean з результатом перевірки чи пустий список.*/

            bool Null<T>(List<T> list_argument)
            {
                if (list_argument.Any())
                {
                    return false;
                }
                else
                {
                    return true;
                }
            }

            Console.WriteLine("\tFunction #2");
            List<int> list = new List<int>();
            Console.WriteLine("With arguments: empty list");
            bool null_res = Null(list);
            Console.WriteLine(null_res);
            list.Add(1);
            Console.WriteLine("With arguments: [1]");
            null_res = Null(list);
            Console.WriteLine(null_res);

            /*      3      */
            /*Створити функцію snoc, яка приймає на вхід список і елемент, і повертає новий список із елементом, який доданий в кінець списку.*/
            
            List<T> snoc<T>(List<T> list_argument, T argument)
            {
                List<T> new_list = new List<T>(list_argument);
                new_list.Add(argument);
                return new_list;
            }

            Console.WriteLine("\tFunction #3");
            List<int> list_2 = new List<int>();
            Console.WriteLine("With arguments: empty list, 1");
            List<int> snoc_res = snoc(list_2, 1);
            snoc_res.ForEach(Console.WriteLine);
            list_2.Clear();
            list_2.Add(1);
            list_2.Add(2);
            Console.WriteLine("With arguments: [1, 2], 3");
            snoc_res = snoc(list_2, 3);
            snoc_res.ForEach(Console.WriteLine);

            /*      4      */
            /*Створити функцію length, яка приймає на вхід список і повертає кількість елементів в списку.*/

            int length<T>(List<T> list_argument)
            {
                int count = 0;
                foreach(T i in list_argument)
                {
                    count++;
                }
                return count;
            }

            Console.WriteLine("\tFunction #4");
            List<int> list_3 = new List<int>();
            Console.WriteLine("With arguments: empty list");
            int length_res = length(list_3);
            Console.WriteLine(length_res);
            list_3.Add(1);
            list_3.Add(2);
            list_3.Add(3);
            Console.WriteLine("With arguments: [1, 2, 3]");
            length_res = length(list_3);
            Console.WriteLine(length_res);

            Console.ReadKey();
        }
    }
}
