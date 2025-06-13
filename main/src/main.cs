using System;
using FormaGen.CommandLines;
using System.Linq;
using Spectre.Console;


namespace FormaGen
{
    class Program
    {
        static void Main(string[] args)
        {
            var cmdline = CmdLine.Create(args);
            if (cmdline == null) return;

            Console.WriteLine(cmdline.ProcessTypes.ToString());
        }
    }
}
