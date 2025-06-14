using System;
using FormaGen.CommandLines;

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
